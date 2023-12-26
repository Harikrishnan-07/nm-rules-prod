[condition][]For business event = $loanData:  LoanData()
                                  $ruleValidationResults: RuleValidationResults()
                                  
[condition][]For scheduled event = $loanDto:  LoanDto()
                                   $ruleValidationResults: RuleValidationResults()                                  

[condition][]If loan data exist = eval(getLoanDataForTheBusinessEvent($loanData) == "true")
[condition][]If loan data doesn't exist = eval(getLoanDataForTheBusinessEvent($loanData) == "false")

[consequence][]Update Fields for the given business event BE_0001 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 1", getLoanDataForTheBusinessEvent($loanData));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);

[condition][]If credit order tracking do exist = eval(validateCreditOrderTrackingCreditReferenceNumber($loanData) == "true")
[condition][]If credit order tracking does not exist = eval(validateCreditOrderTrackingCreditReferenceNumber($loanData) == "false")
[condition][]If rpt fee sheet do exist = eval(validateRptFeesheetFolderId($loanData) == "true")
[condition][]If rpt fee sheet does not exist = eval(validateRptFeesheetFolderId($loanData) == "false")

[consequence][]Update Fields for the given business event BE_0002 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 2", validateCreditOrderTrackingCreditReferenceNumber($loanData));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);

[consequence][]Update Fields for the given business event BE_0003 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 3", validateRptFeesheetFolderId($loanData));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);
		       

[condition][]If loan info do exist for the loan to be disclosed in two days  = eval(validateLoansForTwoDaysFromApplicationDate($loanDto) == "true")
[condition][]If loan info do exist for the loan to be disclosed in one day  = eval(validateLoansForOneDayFromApplicationDate($loanDto) == "true")
[condition][]If loan info do exist for the loan to be disclosed today  = eval(validateLoansForToday($loanDto) == "true")

[consequence][]Update Fields for the given business event BE_0004 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 4", validateLoanToBeDisclosedInTwoDays($loanDto));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);

[consequence][]Update Fields for the given business event BE_0005 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 5", validateLoanToBeDisclosedInOneDay($loanDto));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);

[consequence][]Update Fields for the given business event BE_0006 =
               RuleValidationResult ruleValidationResult = new RuleValidationResult("Rule 6", validateLoanToBeDisclosedToday($loanDto));
		       $ruleValidationResults.getRuleValidationResultList().add(ruleValidationResult);