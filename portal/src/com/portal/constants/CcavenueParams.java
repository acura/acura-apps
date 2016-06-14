package com.portal.constants;

import java.util.Hashtable;

public class CcavenueParams {

	public static Hashtable<String, String> ccavenueParamHM;
	
	static {
		ccavenueParamHM = new Hashtable<String, String>();
	}

	public Hashtable<String, String> getCcavenueParamHM() {
		return ccavenueParamHM;
	}

	public void setCcavenueParamHM(Hashtable<String, String> ccavenueParamHM) {
		this.ccavenueParamHM = ccavenueParamHM;
	}
	
}
