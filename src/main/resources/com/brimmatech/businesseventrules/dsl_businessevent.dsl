[condition][]For business event = $loanData:  LoanData()
                                  $ruleValidationResults: RuleValidationResults()

[condition][]If loan data exist = eval(getLoanDataForTheBusinessEvent($loanData) == true)

[consequence][]Update Fields for the given business event BE_0001 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 1", getLoanDataForTheBusinessEvent($loanData));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);