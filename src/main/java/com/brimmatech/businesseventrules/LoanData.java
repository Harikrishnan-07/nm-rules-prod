package com.brimmatech.businesseventrules;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class LoanData implements java.io.Serializable {

	static final long serialVersionUID = 1L;

	private java.lang.String firstName;
	private java.lang.String lastName;
	private java.lang.String loanId;

	public LoanData() {
	}

	public java.lang.String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(java.lang.String firstName) {
		this.firstName = firstName;
	}

	public java.lang.String getLastName() {
		return this.lastName;
	}

	public void setLastName(java.lang.String lastName) {
		this.lastName = lastName;
	}

	public java.lang.String getLoanId() {
		return this.loanId;
	}

	public void setLoanId(java.lang.String loanId) {
		this.loanId = loanId;
	}

	public LoanData(java.lang.String firstName, java.lang.String lastName,
			java.lang.String loanId) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.loanId = loanId;
	}

}