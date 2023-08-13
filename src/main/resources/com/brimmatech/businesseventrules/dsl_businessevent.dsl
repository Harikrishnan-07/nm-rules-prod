[condition][]For business event = $loanData:  LoanData()
                                  $ruleValidationResults: RuleValidationResults()

[condition][]If laon data exist = eval(getLoanDataForTheBusinessEvent($loanData) == true)

[consequence][]Update Fields for the given business event BE_0001 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 1", "");
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);