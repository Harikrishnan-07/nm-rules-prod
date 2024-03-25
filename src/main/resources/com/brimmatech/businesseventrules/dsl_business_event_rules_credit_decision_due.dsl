[condition][]If initial disclosure due today = eval(retrieveApplicationDateAndFolderName($rulesDataDto, 2).length() > 0)
[condition][]If initial disclosure due in one day = eval(retrieveApplicationDateAndFolderName($rulesDataDto, 1).length() > 0)
[condition][]If initial disclosure due in two days = eval(retrieveApplicationDateAndFolderName($rulesDataDto, 0).length() > 0)

[consequence][]Send notifications for the Loans to be Disclosed Today =
               $ruleValidationResult.setValidationResult(retrieveApplicationDateAndFolderName($rulesDataDto, 2));               

[consequence][]Send notifications for the Loans to be Disclosed in one day =
               $ruleValidationResult.setValidationResult(retrieveApplicationDateAndFolderName($rulesDataDto, 1));               
		       
[consequence][]Send notifications for the Loans to be Disclosed in two days =
               $ruleValidationResult.setValidationResult(retrieveApplicationDateAndFolderName($rulesDataDto, 0));