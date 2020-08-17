Locales['en'] = {
    ['document_deleted'] = "Document was ~g~deleted~w~.",
    ['document_delete_failed'] = "Document delete ~r~failed~w~.",
    ['copy_from_player'] = "You ~g~received~w~ a form copy from a player.",
    ['from_copied_player'] = "Form ~g~copied~w~ to player",
    ['could_not_copy_form_player'] = "Could ~r~not~w~ copy form to player.",
    ['document_options'] = "Document Options",
    ['public_documents'] = "Public Documents",
    ['job_documents'] = "Job Documents",
    ['saved_documents'] = "Saved Documents",
    ['close_bt'] = "Close",
    ['no_player_found'] = "No players found",
    ['go_back'] = "Go Back",
    ['view_bt'] = "View",
    ['show_bt'] = "Show",
    ['give_copy'] = "Give Copy",
    ['delete_bt'] = "Delete",
    ['yes_delete'] = "Yes Delete",
}

Config.Documents['en'] = {
  ["public"] = {
  }, 

  ["police"] = {
    {
      headerTitle = "S.A.D.L.E. FORMAL WARNING",
      headerSubtitle = "This is a warning for minor infractions. No points or fines will be issued.",
      elements = {
        { label = "NAME OF OFFENDER", type = "input", value = "", can_be_empty = false},
        { label = "TIME OF OFFENSE", type = "input", value = "TIMESTAMP", can_be_empty = false},
        {label = "LOCATION OF OFFENSE", type = "input", value = "", can_be_empty = false},
        {label = "OFFENSE DETAILS", type = "input", value = "", can_be_empty = false},
        {label = "COURT SUMMONS DATE", type = "input", value = "TIMESTAMP", can_be_empty = true}
      }
    },
    {
      headerTitle = "S.A.D.L.E. CITATION",
      headerSubtitle = "This is a citation for infractions. Demerits and or fines may be issued.",
      elements = {
        { label = "NAME OF OFFENDER", type = "input", value = "", can_be_empty = false},
        { label = "TIME OF OFFENSE", type = "input", value = "TIMESTAMP", can_be_empty = false},
        {label = "LOCATION OF OFFENSE", type = "input", value = "", can_be_empty = false},
        {label = "OFFENSE DETAILS", type = "textarea", value = "", can_be_empty = false},
        {label = "OFFICERS INVOLVED", type = "input", value = "", can_be_empty = false},
        {label = "COURT SUMMONS DATE", type = "input", value = "TIMESTAMP", can_be_empty = true},
        {label = "PAYMENT DUE", type = "input", value = "", can_be_empty = false}
      }
    },
    {
      headerTitle = "S.A.D.L.E. WARRANTLESS ARREST CITATION",
      headerSubtitle = "This is a citation for arrest. Demerits and or fines may be issued.",
      elements = {
        { label = "NAME OF OFFENDER", type = "input", value = "", can_be_empty = false},
        { label = "TIME OF OFFENSE", type = "input", value = "TIMESTAMP", can_be_empty = false},
        {label = "LOCATION OF OFFENSE", type = "input", value = "", can_be_empty = false},
        {label = "OFFENSE DETAILS", type = "textarea", value = "", can_be_empty = false},
        {label = "OFFICERS INVOLVED", type = "textarea", value = "", can_be_empty = false},
        {label = "COURT SUMMONS DATE", type = "input", value = "TIMESTAMP", can_be_empty = true},
        {label = "PAYMENT DUE", type = "input", value = "", can_be_empty = false},
      }
    },
    {
      headerTitle = "CONCEALED CARRY PERMIT",
      headerSubtitle = "S.A.D.L.E. Authorized Concealed Carry Permit",
      elements = {
        { label = "HOLDER NAME", type = "input", value = "", can_be_emtpy = false },
        { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
        { label = "PERMIT ID", type = "inpur", value = "BadgeNumber - MMDDYY Issue Date - 1 Ex: 301-072220-1", can_be_empty = false},
        { label = "INFORMATION", type = "textarea", value = "THE AFOREMENTIONED CITIZEN IS ALLOWED AND GRANTED A CONCEALED CARRY PERMIT WHICH WILL BE VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
        { label = "CONDITIONS OF THIS PERMIT", type = "textarea", value = "This permit can be revoked without warning at any point if any of the following conditions are met; (1) A Violent felony is commited, (2) A weapons violation is commited, This revocation will contain the permit ID, date, and revocation information in NCID. This permit is only valid for One-Hand Semi-Auto pistols that cannot be seen during daytime unless in use.", can_be_edited = false}
      }
    },    
    {
      headerTitle = "DEFENSIVE HOMEOWNERS PERMIT",
      headerSubtitle = "S.A.D.L.E. Authorized Defensive Homeowners Permit",
      elements = {
        { label = "HOLDER NAME", type = "input", value = "", can_be_emtpy = false },
        { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
        { label = "PERMIT ID", type = "inpur", value = "BadgeNumber - MMDDYY Issue Date - 2 Ex: 301-072220-2", can_be_empty = false},
        { label = "INFORMATION", type = "textarea", value = "THE AFOREMENTIONED CITIZEN IS ALLOWED AND GRANTED A DEFENSEIVE HOMEOWNERS PERMIT WHICH WILL BE VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
        { label = "CONDITIONS OF THIS PERMIT", type = "textarea", value = "This permit can be revoked without warning at any point if any of the following conditions are met; (1) A Violent felony is commited, (2) A weapons violation is commited, This revocation will contain the permit ID, date, and revocation information in NCID. This permit allows the holder to posess and discharge Class 2 weapons on his or her own property in accordance with city ordinance. It also allows the holder to carry a One-Handed Semi-Automatic firearm on a holster visible during the day.", can_be_edited = false}
      }
    },
    {
      headerTitle = "WITNESS TESTIMONY",
      headerSubtitle = "Official witness testimony.",
      elements = {
        { label = "WITNESS NAME", type = "input", value = "", can_be_empty = false},
        { label = "DATE OF OCCURENCE", type = "input", value = "", can_be_emtpy = false },
        { label = "TESTIMONY CONTENT", type = "textarea", value = "", can_be_emtpy = false },
      }
    },
    {
      headerTitle = "SEARCH AND ARREST WARRANT",
      headerSubtitle = "Warrant signed by a judge for search and arrest.",
      elements = {
        { label = "WARRANTED FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
        { label = "WARRANTED LASTNAME", type = "input", value = "", can_be_emtpy = false },
        { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
        { label = "CHARGES", type = "textarea", value = "THE ACCUSED IS HEREBY CHARGED WITH THE FOLLOWING CHARGES ALLOWING FOR THIS WARRANT TO BE VALID.", can_be_emtpy = false },
        { label = "VALID APPLICATIONS", type = "textarea", value = "THE ACCUSED HEREBY FOREFITS THE FOLLOWING TO S.A.D.L.E.", can_be_empty = false},
        { label = "JUDGE SIGNATURE", type="input", value="THIS FORM IS VOID UNLESS SIGNED BY A JUDGE", can_be_empty = false, can_be_edited = false },
      }
    },
    {
      headerTitle = "ORDER OF PROTECTION",
      headerSubtitle = "Protection Order against a person or group issued by the court",
      elements = {
        { label = "Protected's CitizenID", type="input", value = "", can_be_empty = false},
        { label = "ORDER ID", type="input", value = "BadgeNumber-MMDDYY IssueDate-P Ex: 301-72220-P", can_be_empty=false},
        { label = "ORDER AGAINST", type = "input", value = "JOHN DOE", can_be_empty = false},
        { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false},
        { label = "PROTECTION FLAGS", type = "input", value="", can_be_empty = false},
        { label = "PROTECTION FLAGS INFORMATION", type = "textarea", value = "W - Order Against is not allowed within ###F of Citizens workplace. F### - Order against is valid for ### feet. P - Citizen's person is protected from Order Against by F###.", can_be_edited=false}
      }
    },
    {
      headerTitle = "OFFICER REFRENCE CARD",
      headerSubtitle = "Information to contact an officer in case of a need",
      elements = {
        { label = "Officer Name and Badge Number", can_be_empty = false, value = "", type="input"},
        { label = "Phone Number of Officer", value="", type="input"},
        { label = "Email of Officer", value="", type="input"},
        { label = "Position and Rank of officer", value="Cheif Detective", can_be_empty=false, type="input"},
        { label = "Usual Hours on Shift", value = "", type="textarea"}
      }
    }
  },
  ["ems"] = {
    {
      headerTitle = "MEDICAL STATEMENT FOR SERVICES RENDERED",
      headerSubtitle = "Medical Bill",
      elements = {
        {label = "INSUREDS NAME", type = "input", can_be_empty = false, value = ""},
        { label = "SERVICES START DATE", type = "input", can_be_empty = false, value = "TIMESTAMP"},
        { label = "SERVICES RENDERED", type = "textarea", can_be_empty = false, value = ""},
        {label = "TOTAL COST", type = "input", can_be_empty = false, value = ""},
        {label = "SERVICES END DATE", type = "input", can_be_empty = false, value = "TIMESTAMP"}
      }
    },
    {
      headerTitle = "MEDICAL REPORT - DISCHARGE",
      headerSubtitle = "Official Medical Discharge Report",
      elements = {
        { label = "INSUREDS NAME", type = "input", value = "", can_be_empty = false},
        { label = "ADMISSION REASON", type = "textarea", value = "GENERAL OBSERVATIONS", can_be_empty = true},
        { label = "ADMISSION DATE", type = "input", value = "TIMESTAMP", can_be_empty = false},
        { label = "RECOMMENDED FOLLOWUP CARE", type = "textarea", value = "", can_be_empty = false},
        { label = "DISCHARGE DATE", type = "input", value = "TIMESTAMP", can_be_empty = false},
        { label = "CARE PROVIDERS", type = "input", value = "", can_be_empty = false}
      }
    },
    {
      headerTitle = "MEDICAL REPORT - DEATH CERTIFICATE",
      headerSubtitle = "Official Medical Death Certification",
      elements = {
        {label = "NAME OF DECEASED", type = "input", value = "", can_be_empty = false},
        {label = "TIME OF DEATH", type = "input", value="TIMESTAMP", can_be_empty = false},
        {label = "CAUSE OF DEATH", type = "textarea", value = "", can_be_empty = false},
        {label = "EXTRA INFORMATION", type = "textarea", value = "", can_be_empty = true}
      }
    },
    {
      headerTitle = "MEDICAL REPORT - PATHOLOGY",
      headerSubtitle = "Official medical report provided by a pathologist.",
      elements = {
        { label = "INSUREDS NAME", type = "input", value = "", can_be_emtpy = false },
        { label = "PROCEDURE DATE", type = "input", value = "TIMESTAMP", can_be_empty = false },
        { label = "MEDICAL NOTES", type = "textarea", value = "THE AFOREMENTIONED INSURED CITIZEN WAS TESTED BY THE SIGNED HEALTHCARE OFFICIAL AND WAS DETERMINED HEALTHY WITH NO DETECTED LONGTERM CONDITIONS.", can_be_emtpy = false },
      }
    },
    {
      headerTitle = "MEDICAL REPORT - PSYCHOLOGY",
      headerSubtitle = "Official medical report provided by a psychologist.",
      elements = {
        { label = "INSUREDS NAME", type = "input", value = "", can_be_emtpy = false },
        { label = "EVALUATION DATE", type = "input", value = "TIMESTAMP", can_be_empty = false },
        { label = "REQUESTED TREATMENT", type = "textarea", value = "", can_be_empty = false},
        { label = "MEDICAL NOTES", type = "textarea", value = "", can_be_emtpy = false },
      }
    },
    {
      headerTitle = "MEDICAL MARIJUANA PERMIT",
      headerSubtitle = "Official medical marijuana usage permit for citizens.",
      elements = {
        { label = "INSUREDS NAME", type = "input", value = "", can_be_emtpy = false },
        { label = "EVALUATION DATE", type = "input", value = "TIMESTAMP", can_be_empty = false},
        { label = "DATE OF ISSUE", type = "input", value = "TIMESTAMP", can_be_empty = false},
        { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
        { label = "DIAGNOSES", type = "textarea", value="", can_be_empty = false},
        { label = "MEDICAL VERIFICATION", type = "textarea", value = "THE AFOREMENTIONED INSURED CITIZEN IS GRANTED, AFTER BEING THOROUGHLY EXAMINED BY A HEALTHCARE SPECIALIST, MARIJUANA USAGE PERMIT DUE TO UNDISCLOSED MEDICAL REASONS. THE LEGAL AND PERMITTED AMOUNT A CITIZEN CAN HOLD CAN NOT BE MORE THAN 27 GRAMS.", can_be_emtpy = false, can_be_edited = false },
      }
    },
  },

  ["doj"] = {
    {
      headerTitle = "LEGAL SERVICES CONTRACT",
      headerSubtitle = "Legal services contract provided by a lawyer.",
      elements = {
        { label = "CITIZEN FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
        { label = "CITIZEN LASTNAME", type = "input", value = "", can_be_emtpy = false },
        { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
        { label = "INFORMATION", type = "textarea", value = "THIS DOCUMENT IS PROOF OF LEGAL REPRESANTATION AND COVERAGE OF THE AFOREMENTIONED CITIZEN. LEGAL SERVICES ARE VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
      }
    },
  },
  ["cardealer"] = {
    {
      headerTitle = "VEHICLE REGISTRATION APPLICATION",
      headerSubtitle = "Official Post-Purchase Vehicle Registration Forms",
      elements = {
        { label = "PURCHASER NAME", type = "input", value = "", can_be_empty = false},
        { label = "LICENSE PLATE", type = "input", value = "", can_be_empty = false},
        { label = "SOLD BY EMPLOYER AND OR NAME", type = "input", value = "", can_be_empty = false},
        { label = "VALID UNTIL 3 MONTHS FROM THE FORM SIGNING DATE", type = "input", value="TIMESTAMP", can_be_empty=false, can_be_edited=true}
      }
    },
    {
      headerTitle = "BILL OF SALE",
      headerSubtitle = "Official Post-Purchase Vehicular Bill of Sale",
      elements = {
        { label = "PURCHASER NAME", type = "input", value = "", can_be_empty = false},
        { label = "LICENSE PLATE", type = "input", value = "", can_be_empty = false},
        { label = "SOLD BY EMPLOYER AND OR NAME", type = "input", value = "", can_be_empty = false},
        { label = "PURCHASED FOR", type = "input", value="", can_be_empty=true, can_be_edited=true}
      }
    }
  }
}
