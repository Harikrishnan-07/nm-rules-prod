[condition][]If credit decision due today = eval(retrieveFolderIdsForCreditDecision($rulesDataDto, 0).length() > 0)
[condition][]If credit decision due in three days = eval(retrieveFolderIdsForCreditDecision($rulesDataDto, 3).length() > 0)
[condition][]If credit decision due in ten days = eval(retrieveFolderIdsForCreditDecision($rulesDataDto, 10).length() > 0)

[consequence][]Send notifications for the Loans have credit decision due today =
               $ruleValidationResult.setValidationResult(retrieveFolderIdsForCreditDecision($rulesDataDto, 0));               

[consequence][]Send notifications for the Loans have credit decision due in three days =
               $ruleValidationResult.setValidationResult(retrieveFolderIdsForCreditDecision($rulesDataDto, 3));               
		       
[consequence][]Send notifications for the Loans have credit decision due in ten days =
               $ruleValidationResult.setValidationResult(retrieveFolderIdsForCreditDecision($rulesDataDto, 10));