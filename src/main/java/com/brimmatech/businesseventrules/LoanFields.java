package com.brimmatech.businesseventrules;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class LoanFields implements java.io.Serializable {

	static final long serialVersionUID = 1L;

	private LoanField loanField;

	public LoanFields() {
	}

	public com.brimmatech.businesseventrules.LoanField getLoanField() {
		return this.loanField;
	}

	public void setLoanField(
			com.brimmatech.businesseventrules.LoanField loanField) {
		this.loanField = loanField;
	}

	public LoanFields(com.brimmatech.businesseventrules.LoanField loanField) {
		this.loanField = loanField;
	}

}