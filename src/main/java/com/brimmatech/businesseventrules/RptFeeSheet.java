package com.brimmatech.businesseventrules;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class RptFeeSheet implements java.io.Serializable {

	static final long serialVersionUID = 1L;

	private java.lang.Integer folderId;
	private Integer id;

	public RptFeeSheet() {
	}

	public java.lang.Integer getFolderId() {
		return this.folderId;
	}

	public void setFolderId(java.lang.Integer folderId) {
		this.folderId = folderId;
	}

	public java.lang.Integer getId() {
		return this.id;
	}

	public void setId(java.lang.Integer id) {
		this.id = id;
	}

	public RptFeeSheet(java.lang.Integer folderId, java.lang.Integer id) {
		this.folderId = folderId;
		this.id = id;
	}

}