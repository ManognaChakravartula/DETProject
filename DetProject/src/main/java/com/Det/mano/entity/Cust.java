package com.Det.mano.entity;

public class Cust {
	
String userId;
String Item;
String Date;
String Description;
Integer Price,Total_Price;
Integer Recordid;

public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getItem() {
	return Item;
}
public void setItem(String item) {
	Item = item;
}
public String getDate() {
	return Date;
}
public void setDate(String date) {
	Date = date;
}

public Integer getPrice() {
	return Price;
}
public void setPrice(Integer price) {
	Price = price;
}
public String getDescription() {
	return Description;
}
public void setDescription(String description) {
	Description = description;
}
public Integer getTotal_Price() {
	return Total_Price;
}
public void setTotal_Price(Integer total_Price) {
	Total_Price = total_Price;
}
public Integer getRecordid() {
	return Recordid;
}
public void setRecordid(Integer recordid) {
	Recordid = recordid;
}

}
