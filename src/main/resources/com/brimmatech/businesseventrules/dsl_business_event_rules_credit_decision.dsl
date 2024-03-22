[condition][]If credit decision due today = eval(retrieveFolderIdsForCreditDecision($rulesDataDto, 30).length() > 0)
[condition][]If credit decision due in three days = eval(retrieveFolderIdsForCreditDecision($rulesDataDto, 27).length() > 0)
[condition][]If credit decision due in ten days = eval(retrieveFolderIdsForCreditDecision($rulesDataDto, 20).length() > 0)

[consequence][]Send notifications for the Loans have credit decision due today =
               $ruleValidationResult.setValidationResult(retrieveFolderIdsForCreditDecision($rulesDataDto, 30));               

[consequence][]Send notifications for the Loans have credit decision due in three days =
               $ruleValidationResult.setValidationResult(retrieveFolderIdsForCreditDecision($rulesDataDto, 27));               
		       
[consequence][]Send notifications for the Loans have credit decision due in ten days =
               $ruleValidationResult.setValidationResult(retrieveFolderIdsForCreditDecision($rulesDataDto, 20));