package model;

public class Service {
		     private int s_id,sm_id,sprice;
		     private String stype,cmodel,duration;
			public int getS_id() {
				return s_id;
			}
			public void setS_id(int s_id) {
				this.s_id = s_id;
			}
			public int getSm_id() {
				return sm_id;
			}
			public void setSm_id(int sm_id) {
				this.sm_id = sm_id;
			}
			public int getSprice() {
				return sprice;
			}
			public void setSprice(int sprice) {
				this.sprice = sprice;
			}
			public String getStype() {
				return stype;
			}
			public void setStype(String stype) {
				this.stype = stype;
			}
			public String getCmodel() {
				return cmodel;
			}
			public void setCmodel(String cmodel) {
				this.cmodel = cmodel;
			}
			public String getDuration() {
				return duration;
			}
			public void setDuration(String duration) {
				this.duration = duration;
			}
			@Override
			public String toString() {
				return "Service [s_id=" + s_id + ", sm_id=" + sm_id + ", sprice=" + sprice + ", stype=" + stype
						+ ", cmodel=" + cmodel + ", duration=" + duration + ", getS_id()=" + getS_id() + ", getSm_id()="
						+ getSm_id() + ", getSprice()=" + getSprice() + ", getStype()=" + getStype() + ", getCmodel()="
						+ getCmodel() + ", getDuration()=" + getDuration() + "]";
			}
		     
		     
}
