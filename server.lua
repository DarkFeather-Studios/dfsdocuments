ESX = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_documents:submitDocument', function(source, cb, data)
    local xPlayer = ESX.GetPlayerFromId(data.spectating or source)
    local db_form = nil;
    local _data = data;
    local playerId = getPlayerID(data.spectating or source)
    --local owners = {}
    --table.insert(owners, playerId)

    --print(data)
    --local status_data = { item = "lamp", x = lamp_position.x, y = lamp_position.y, z = lamp_position.z, heading = lamp_heading }

    MySQL.Async.insert("INSERT INTO user_documents (owner, data) VALUES (@owner, @data)", {['@owner'] = playerId, ['@data'] = json.encode(data)}, function(id)

        if id ~= nil then
            MySQL.Async.fetchAll('SELECT * FROM user_documents where id = @id', {['@id']=id}, function (result)
                --print("Trying to dump: " .. dump(result))
                if(result[1] ~= nil) then
                    db_form = result[1]
                    db_form.data = json.decode(result[1].data)
                    TriggerClientEvent("dfs_documents:ForceRefresh", data.spectating or 999)
                    cb(db_form)
                end
            end)
        else
            TriggerClientEvent("dfs_documents:ForceRefresh", data.spectating or 999)
            cb(db_form)
        end
    end)
end)

ESX.RegisterServerCallback('esx_documents:deleteDocument', function(source, cb, id)

    local db_document = nil;
    local playerId = getPlayerID(source)

    MySQL.Async.execute('DELETE FROM user_documents WHERE id = @id AND owner = @owner',
    {
        ['@id']  = id,
        ['@owner'] = playerId
    }, function(rowsChanged)

        if rowsChanged >= 1 then
            TriggerClientEvent('esx:showNotification', source, _U('document_deleted'))
            cb(true)
        else
            TriggerClientEvent('esx:showNotification', source, _U('document_delete_failed'))
            cb(false)
        end
        end)
end)




ESX.RegisterServerCallback('esx_documents:getPlayerDocuments', function(source, cb)

    local playerId = getPlayerID(source)
    local forms = {}

    MySQL.Async.fetchAll("SELECT * FROM user_documents WHERE owner = @owner", {['@owner'] = playerId}, function(result)

        if #result > 0 then

            for i=1, #result, 1 do

                local tmp_result = result[i]
                tmp_result.data = json.decode(result[i].data)

                table.insert(forms, tmp_result)
                --print(dump(tmp_result))
            end
            cb(forms)
        end

    end)

end)


ESX.RegisterServerCallback('esx_documents:getPlayerDetails', function(source, cb)

    local playerId = getPlayerID(source)
    local cb_data = nil

    MySQL.Async.fetchAll("SELECT firstname, lastname, dateofbirth FROM users WHERE identifier = @owner", {['@owner'] = playerId}, function(result)

        if result[1] ~= nil then
            cb_data = result[1]
            cb(cb_data)
        else
            cb(cb_data)
        end

    end)

end)


RegisterServerEvent('esx_documents:ShowToPlayer')
AddEventHandler('esx_documents:ShowToPlayer', function(targetID, aForm)
    aForm.spectating = source
    TriggerClientEvent('esx_documents:viewDocument', targetID, aForm)

end)

RegisterServerEvent('esx_documents:CopyToPlayer')
AddEventHandler('esx_documents:CopyToPlayer', function(targetID, aForm)

    local _source   = source

    local _targetid = ESX.GetPlayerFromId(targetID).source
    local _aForm    = aForm
    local playerId  = getPlayerID(_targetid)

    aForm.spectating = nil

    MySQL.Async.insert("INSERT INTO user_documents (owner, data) VALUES (@owner, @data)", {['@owner'] = playerId, ['@data'] = json.encode(aForm)}, function(id)
            if id ~= nil then
                MySQL.Async.fetchAll('SELECT * FROM user_documents where id = @id', {['@id']=id}, function (result)
                    --print("Trying to dump: " .. dump(result))
                    if(result[1] ~= nil) then
                        db_form = result[1]
                        db_form.data = json.decode(result[1].data)
                        TriggerClientEvent('esx_documents:copyForm', _targetid, db_form)
                        TriggerClientEvent('esx:showNotification', _targetid, _U('copy_from_player'))
                        TriggerClientEvent('esx:showNotification', _source, _U('from_copied_player'))
                    else
                        TriggerClientEvent('esx:showNotification', _source, _U('could_not_copy_form_player'))
                    end
                end)
            else
                TriggerClientEvent('esx:showNotification', _source, _U('could_not_copy_form_player'))
            end
    end)

end)


function getPlayerID(source)
    local identifiers = GetPlayerIdentifiers(source)
    local player = getIdentifiant(identifiers)
    return player
end
function getIdentifiant(id)
    for _, v in ipairs(id) do
        return v
    end
end


function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end


AddEventHandler("onServerResourceStart", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        exports.dfs:RegisterServerCallback("dfs_documents:UpdateDocument", function(playerId, DocumentEntry)
            MySQL.Sync.execute("UPDATE `user_documents` SET `data` = @Data WHERE `id` = @id", {["@id"] = DocumentEntry.id, ["@Data"] = json.encode(DocumentEntry.data)})
            return
        end)
    end
end)

RegisterNetEvent("dfs_documents:AddCitizenshipVisa")
AddEventHandler("dfs_documents:AddCitizenshipVisa", function()
    local src = source
    local data = json.decode([[{"elements":[{"elementid":"_m0","type":"input","can_be_edited":false,"label":"VISA HOLDER","value":"FIRST LAST"},{"elementid":"_m1","type":"input","can_be_edited":false,"label":"VALID FOR","value":"Full work, living, and education access."},{"elementid":"_m2","type":"input","can_be_edited":false,"label":"ISSUE DATE","value":"<TODAYS DATE>"},{"elementid":"_m3","type":"input","can_be_edited":false,"label":"EXPIRES ON","value":"<TODAYS DATE + 2 YEARS>"},{"elementid":"_m4","type":"textarea","can_be_edited":false,"label":"NOTES","value":"Welcome to Los Santos! You've probably arrived via train and are pretty empty handed. First thing's first, You can hop on the metro free of charge and take it to the Little Seoul station. Walk Southwest to the Corner of Vespucci Boulevard and Palomino Avenue and you'll see a VodaPhone you can buy a phone from. Hop back on the metro and take it back to the Alta Street Station, walk two blocks south to Bifta Logistics. You can get your first job there as a Sanitization Worker. It's messy, but it gets you your first paychecks! While you're on your break, head over to PDM at the Corner of Power Street and Adam's Apple Boulevard and check out their stock, see if there's something inexpensive you can buy to call your own, or check out the used car lot at the Corner of Carson and Strawberry Avenues. Once you get your first ride, you can become a Part-Time Taxi Driver by talking to George on Mirror Park Boulevard and Tangerine Street. It won't pay quite as much, but the time goes a lot faster, and you might meet some nice people, or even land yourself a new job offer! Lastly, if you end up hurt, you can go visit the kind medics at Pillbox, on the Corner of Elgin Avenue and Integrity Way. Beware of Nancy, though... She can be a fiesty one with sticky fingers! Best of luck out there, I'll see you around!"}],"headerTitle":"CITIZENSHIP VISA","headerDateCreated":"Fri Jul 24 2020 12:16:12","viewerJobLabel":"BCSO","xotikTitle":"","headerDateOfBirth":"1979-06-12","headerJobLabel":"BCSO","viewerJobGrade":"Sheriff","viewerLastName":"Booker","viewerFirstName":"Mason","headerFirstName":"Mason","headerLastName":"Booker","headerSubtitle":"This document describes your terms of citizenship for the state of San Andreas.","submittable":true,"headerJobGrade":"Sheriff","signed":"Mason Booker\nBCSO - Sheriff\nFri Jul 24 2020 12:16:10"}]])
    local TheirIdentity = exports.dfs:GetTheirIdentity(src)

    data["elements"][findIndexOfSubtableContainingElement(data.elements, "_m0")].value = TheirIdentity.FirstName .. " " .. TheirIdentity.LastName
    data["elements"][findIndexOfSubtableContainingElement(data.elements, "_m2")].value = os.date("%a %b %d %Y %H:%M:%S")    
    data["elements"][findIndexOfSubtableContainingElement(data.elements, "_m3")].value = os.date("%a %b %d %Y %H:%M:%S", os.time(os.date("*t")) + 730 * 24 * 3600) --Two years from now
    data["headerJobLabel"] = "Unemployed"
    data["headerDateCreated"] = os.date("%a %b %d %Y %H:%M:%S", os.time(os.date("*t")) - 120) --Two minutes ago
    data["headerDateOfBirth"] = TheirIdentity.DateOfBirth
    data["headerFirstName"] = TheirIdentity.FirstName
    data["headerLastName"] = TheirIdentity.LastName
    data["submittable"] = false
    data["headerJobGrade"] = "Unemployed"
    data["signed"] = "Mason Booker\nBCSO - Sheriff\n"..os.date("%a %b %d %Y %H:%M:%S")

    MySQL.Sync.insert("INSERT INTO `user_documents` (owner, data) VALUES (@owner, @data)", {["@owner"] = exports.dfs:GetTheirIdentifiers(src).SteamID, ["@data"] = json.encode(data)})
    TriggerClientEvent("dfs_documents:ForceRefresh", src)
end)

function findIndexOfSubtableContainingElement(parentTable, elementValue)
    for keyId, SubTable in pairs(parentTable) do
        for keyName, keyValue in pairs(SubTable) do
            if keyValue == elementValue then
                print("Found")
                return keyId
            end
        end
    end
    print("NOT found")
    return nil
end