[condition][]For trigger event = $rulesDataDto:  RulesDataDto()
                                   $ruleValidationResult: RuleValidationResult()
                                   
[condition][]If initial disclosure due today = eval(fetchFolderIdsOnInitialDisclosureRule($rulesDataDto, 2).length() > 0)
[condition][]If initial disclosure due in one day = eval(fetchFolderIdsOnInitialDisclosureRule($rulesDataDto, 1).length() > 0)
[condition][]If initial disclosure due in two days = eval(fetchFolderIdsOnInitialDisclosureRule($rulesDataDto, 0).length() > 0)

[consequence][]Send notifications for the Loans to be Disclosed Today =
               $ruleValidationResult.setValidationResult(fetchFolderIdsOnInitialDisclosureRule($rulesDataDto, 2));               

[consequence][]Send notifications for the Loans to be Disclosed in one day =
               $ruleValidationResult.setValidationResult(fetchFolderIdsOnInitialDisclosureRule($rulesDataDto, 1));               
		       
[consequence][]Send notifications for the Loans to be Disclosed in two days =
               $ruleValidationResult.setValidationResult(fetchFolderIdsOnInitialDisclosureRule($rulesDataDto, 0));
