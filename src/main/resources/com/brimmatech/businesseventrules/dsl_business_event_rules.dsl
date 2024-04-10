[condition][]For trigger event = $rulesDataDto:  RulesDataDto()
                                   $ruleValidationResult: RuleValidationResult()
                                   
[condition][]If initial disclosure due today = eval(retrieveApplicationDateAndFolderName($rulesDataDto, 2).length() > 0)
[condition][]If initial disclosure due in one day = eval(retrieveApplicationDateAndFolderName($rulesDataDto, 1).length() > 0)
[condition][]If initial disclosure due in two days = eval(retrieveApplicationDateAndFolderName($rulesDataDto, 0).length() > 0)

[consequence][]Send notifications for the Loans to be Disclosed Today =
               $ruleValidationResult.setValidationResult(retrieveApplicationDateAndFolderName($rulesDataDto, 2));               

[consequence][]Send notifications for the Loans to be Disclosed in one day =
               $ruleValidationResult.setValidationResult(retrieveApplicationDateAndFolderName($rulesDataDto, 1));               
		       
[consequence][]Send notifications for the Loans to be Disclosed in two days =
               $ruleValidationResult.setValidationResult(retrieveApplicationDateAndFolderName($rulesDataDto, 0));
               
[condition][]If loan expires today = eval(fetchExpiryDueFolderIds($rulesDataDto, 0).length() > 0)
[condition][]If loan expires in one day = eval(fetchExpiryDueFolderIds($rulesDataDto, 1).length() > 0)
[condition][]If loan expires in two days = eval(fetchExpiryDueFolderIds($rulesDataDto, 2).length() > 0)

[consequence][]Send notifications for the Loans to be Expired Today =
               $ruleValidationResult.setValidationResult(fetchExpiryDueFolderIds($rulesDataDto, 0));               

[consequence][]Send notifications for the Loans to be Expired in one day =
               $ruleValidationResult.setValidationResult(fetchExpiryDueFolderIds($rulesDataDto, 1));               
		       
[consequence][]Send notifications for the Loans to be Expired in two days =
               $ruleValidationResult.setValidationResult(fetchExpiryDueFolderIds($rulesDataDto, 2));               
               
[condition][]If loan lock req submitted = eval(fetchFolderIdsOnLockRequest($rulesDataDto, 2).length() > 0)
[condition][]If loan lock req approved = eval(fetchFolderIdsOnLockRequest($rulesDataDto, 3).length() > 0)

[consequence][]Send notifications for the Loan lock request submitted =
               $ruleValidationResult.setValidationResult(fetchFolderIdsOnLockRequest($rulesDataDto, 2));               

[consequence][]Send notifications for the Loan lock request approved =
               $ruleValidationResult.setValidationResult(fetchFolderIdsOnLockRequest($rulesDataDto, 3));               
               

[condition][]If possible affiliate exists = eval(fetchFolderIdsAffiliate($rulesDataDto).length() > 0)
[consequence][]Send notifications for possible affiliate = 
               $ruleValidationResult.setValidationResult(fetchFolderIdsAffiliate($rulesDataDto));
               
[condition][]If lock disclosure due in one day = eval(fetchFolderIdsLockDisclosureDue($rulesDataDto, 2).length() > 0)
[condition][]If lock disclosure due today = eval(fetchFolderIdsLockDisclosureDue($rulesDataDto, 3).length() > 0)

[consequence][]Send notifications for lock disclosures due in one day =
               $ruleValidationResult.setValidationResult(fetchFolderIdsLockDisclosureDue($rulesDataDto, 2)); 
[consequence][]Send notifications for lock disclosures due today =
               $ruleValidationResult.setValidationResult(fetchFolderIdsLockDisclosureDue($rulesDataDto, 3)); 

[condition][]If Respa application submitted = eval(getFolderIdsForRespaApplication($rulesDataDto).length() > 0)

[consequence][]Send notifications for Respa application submitted =
               $ruleValidationResult.setValidationResult(getFolderIdsForRespaApplication($rulesDataDto));   
               
[condition][]If credit decision due today = eval(getFolderIdsForCreditDecision($rulesDataDto, 30).length() > 0)
[condition][]If credit decision due in three day = eval(getFolderIdsForCreditDecision($rulesDataDto, 27).length() > 0)
[condition][]If credit decision due in ten days = eval(getFolderIdsForCreditDecision($rulesDataDto, 20).length() > 0)

[consequence][]Send notifications for the Loans with credit decision due Today =
               $ruleValidationResult.setValidationResult(getFolderIdsForCreditDecision($rulesDataDto, 30));               

[consequence][]Send notifications for the Loans with credit decision due in three days =
               $ruleValidationResult.setValidationResult(getFolderIdsForCreditDecision($rulesDataDto, 27));               
		       
[consequence][]Send notifications for the Loans with credit decision due in ten days =
               $ruleValidationResult.setValidationResult(getFolderIdsForCreditDecision($rulesDataDto, 20));               