package com.UDHFashion.udhmanagmentsystem.model;

public class ShopExpenditures {
	
	private int id;
	private String date;
	private int billNo;
	private String name;
	private String reason;
	private Double amount;
	
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getReason() {
			return reason;
		}
		public void setReason(String reason) {
			this.reason = reason;
		}
		public Double getAmount() {
			return amount;
		}
		public void setAmount(Double amount) {
			this.amount = amount;
		}
		public int getBillNo() {
			return billNo;
		}
		public void setBillNo(int billNo) {
			this.billNo = billNo;
		}
		
		

}
