[condition][]If credit decision due today = eval(retrieveFolderIdsForCreditDecision($rulesDataDto, 2).length() > 0)
[condition][]If credit decision due in three days = eval(retrieveFolderIdsForCreditDecision($rulesDataDto, 1).length() > 0)
[condition][]If credit decision due in ten days = eval(retrieveFolderIdsForCreditDecision($rulesDataDto, 0).length() > 0)

[consequence][]Send notifications for the Loans have credit decision due today =
               $ruleValidationResult.setValidationResult(retrieveFolderIdsForCreditDecision($rulesDataDto, 2));               

[consequence][]Send notifications for the Loans have credit decision due in three days =
               $ruleValidationResult.setValidationResult(retrieveFolderIdsForCreditDecision($rulesDataDto, 1));               
		       
[consequence][]Send notifications for the Loans have credit decision due in ten days =
               $ruleValidationResult.setValidationResult(retrieveFolderIdsForCreditDecision($rulesDataDto, 0));