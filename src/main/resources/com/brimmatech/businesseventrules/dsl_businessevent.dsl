[condition][]For business event = $loanData:  LoanData()
                                  $ruleValidationResults: RuleValidationResults()

[condition][]If loan data exist = eval(getLoanDataForTheBusinessEvent($loanData) == "true")
[condition][]If loan data doesn't exist = eval(getLoanDataForTheBusinessEvent($loanData) == "false")

[consequence][]Update Fields for the given business event BE_0001 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 1", getLoanDataForTheBusinessEvent($loanData));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);