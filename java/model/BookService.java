package model;

public class BookService {
		 private int b_id,c_id,s_id,sm_id;
		 private String service_status,payment_status;
		public int getB_id() {
			return b_id;
		}
		public void setB_id(int b_id) {
			this.b_id = b_id;
		}
		public int getC_id() {
			return c_id;
		}
		public void setC_id(int c_id) {
			this.c_id = c_id;
		}
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
		public String getService_status() {
			return service_status;
		}
		public void setService_status(String service_status) {
			this.service_status = service_status;
		}
		public String getPayment_status() {
			return payment_status;
		}
		public void setPayment_status(String payment_status) {
			this.payment_status = payment_status;
		}
		@Override
		public String toString() {
			return "BookService [getB_id()=" + getB_id() + ", getC_id()=" + getC_id() + ", getS_id()=" + getS_id()
					+ ", getSm_id()=" + getSm_id() + ", getService_status()=" + getService_status()
					+ ", getPayment_status()=" + getPayment_status() + "]";
		}
		 
		 
			
}
