package com.UDHFashion.udhmanagmentsystem.util;

public class CommonConstants {

	/*---------------------- Shop queries--------------------------*/
	public final static String INSERT_SHOP_DETAILS = "INSERT INTO shop(name,address,telephone) VALUES(?,?,?)";
	public final static String GET_ALL_SHOP_DETAILS = "SELECT * FROM shop";
	public final static String DELETE_SHOP_DETAILS = "DELETE FROM shop WHERE id = ?";
	
	
	/*-----------------------Employee queries--------------------------*/
	public final static String INSERT_EMPLOYEE_DETAILS = "INSERT INTO employee(empNo,empName,empAddress,basicSalary,jobDate,contactNum,gContactNum ) VALUES(?,?,?,?,?,?,?)";
	public final static String GET_ALL_EMPLOYEE_DETAILS = "SELECT * FROM employee";
	public final static String DELETE_EMPLOYEE_DETAILS = "DELETE FROM employee WHERE empNo = ?";
	public final static String UPDATE_EMPLOYEE_DETAILS = "UPDATE employee SET empName = ? , empAddress = ?,basicSalary = ?, jobDate = ?, contactNum = ?, gContactNum = ? WHERE empNo = ?";
	public final static String GET_EMPLOYEE_BY_NO = "SELECT * FROM employee WHERE empNo = ?";
	
	
	
	/*---------------------- Item queries--------------------------------*/
	public final static String GET_ITEM_CODES_BY_LIKE_OPERATOR = "SELECT code FROM item WHERE code LIKE '?%%?'";
	public final static String INSERT_STOCK_DETAILS = "INSERT INTO item(code,quantity,description,gross_price,net_price,price,discount_amount,est_net_profit,net_profit,shop_id) VALUES(?,?,?,?,?,?,?,?,?,?)";
	public final static String GET_ALL_ITEM_LIST = "SELECT * FROM item";
	public final static String GET_ITEM_BY_ID = "SELECT * FROM item WHERE code = ?";
	public final static String DELETE_ITEM_DETAILS ="DELETE FROM item WHERE code = ?";
	public final static String GET_ITEM_DATA_BY_ID = "SELECT * FROM item WHERE code = ?";
	public final static String UPDATE_ITEM_DATA = "UPDATE item SET quantity = ? , description = ?, gross_price = ?, net_price = ?, price = ?, discount_amount = ?, est_net_profit = ?, net_profit = ?, shop_id = ? WHERE code = ?";
	
	
	/*---------------------------Bar-code queries-------------------------------*/
	public final static String INSERT_BARCODE_DETAILS = "INSERT INTO temp_barcode_data(code,price,quantity) VALUES(?,?,?)";
	public final static String GET_ALL_BARCODE_DATA = "SELECT * FROM temp_barcode_data";
	public final static String DELETE_BARCODE_DATA = "DELETE FROM temp_barcode_data WHERE code = ?";
	public final static String GET_BARCODE_DATA_BY_ID = "SELECT * FROM temp_barcode_data WHERE code = ?";
}

