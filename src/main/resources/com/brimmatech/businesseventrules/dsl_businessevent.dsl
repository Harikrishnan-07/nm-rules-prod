[condition][]For business event = $loanData:  LoanData()
                                  $ruleValidationResults: RuleValidationResults()

[condition][]If laon data exist = eval(getLoanDataForTheBusinessEvent($loanData) == true)


