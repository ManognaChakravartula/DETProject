package com.Det.mano.Dao;

import java.sql.SQLException;
import java.util.List;

import com.Det.mano.entity.Cust;

public interface ICustDao
{
	 String addexpenses(Cust cust, String email) throws SQLException;
	 List<Cust> ManageExpenses(String email) throws SQLException;
	 List<Cust> TodaysExpenses(String email) throws SQLException;
	 List<Cust> YesterdaysExpenses(String email) throws SQLException ;
	 List<Cust> Last7daysexpenses(String email) throws SQLException;
	 List<Cust> CurrentMonthexpenses(String email, int year, int month) throws SQLException ;
	 List<Cust> Totalyearexpenses(String email,int selectedYear) throws SQLException;
	 String UpdateRecord(Cust cust,Integer recordid) throws SQLException;
	 Cust findRecordById(Integer Recordid) throws SQLException;
	 String deleteRecord(Integer Recordid) throws SQLException;
}
