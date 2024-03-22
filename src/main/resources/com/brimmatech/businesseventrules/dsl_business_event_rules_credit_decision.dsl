[condition][]If credit decision due today = eval(getFolderIdsForCreditDecision($rulesDataDto, 30).length() > 0)
[condition][]If credit decision due in three days = eval(getFolderIdsForCreditDecision($rulesDataDto, 27).length() > 0)
[condition][]If credit decision due in ten days = eval(getFolderIdsForCreditDecision($rulesDataDto, 20).length() > 0)

[consequence][]Send notifications for the Loans have credit decision due today =
               $ruleValidationResult.setValidationResult(getFolderIdsForCreditDecision($rulesDataDto, 30));               

[consequence][]Send notifications for the Loans have credit decision due in three days =
               $ruleValidationResult.setValidationResult(getFolderIdsForCreditDecision($rulesDataDto, 27));               
		       
[consequence][]Send notifications for the Loans have credit decision due in ten days =
               $ruleValidationResult.setValidationResult(getFolderIdsForCreditDecision($rulesDataDto, 20));