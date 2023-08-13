[condition][]For business event = $businessEventFindings:  BusinessEventFindings()
                                            $loanFields: LoanFields()

[condition][]If laon data exist = eval(getLoanDataForTheBusinessEvent($businessEventFindings) != null)