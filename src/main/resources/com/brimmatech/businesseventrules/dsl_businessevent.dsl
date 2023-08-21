[condition][]For business event = $loanData:  LoanData()
                                  $ruleValidationResults: RuleValidationResults()

[condition][]If loan data exist = eval(getLoanDataForTheBusinessEvent($loanData) == "true")
[condition][]If loan data doesn't exist = eval(getLoanDataForTheBusinessEvent($loanData) == "false")

[consequence][]Update Fields for the given business event BE_0001 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 1", getLoanDataForTheBusinessEvent($loanData));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);

[condition][]If rpt fee sheet do exist = eval(validateRptFeesheetFolderId($loanData) == "true")
[condition][]If rpt fee sheet does not exist = eval(validateRptFeesheetFolderId($loanData) == "false")

[consequence][]Update Fields for the given business event BE_0004 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 4", validateCreditOrderTrackingCreditReferenceNumber($loanData));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);

[condition][]If credit order tracking do exist = eval(validateCreditOrderTrackingCreditReferenceNumber($loanData) == "true")
[condition][]If credit order tracking does not exist = eval(validateCreditOrderTrackingCreditReferenceNumber($loanData) == "false")

[consequence][]Update Fields for the given business event BE_0003 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 3", validateRptFeesheetFolderId($loanData));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);
