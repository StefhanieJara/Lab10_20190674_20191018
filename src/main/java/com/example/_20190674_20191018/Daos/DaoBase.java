package com.example._20190674_20191018.Daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class DaoBase {
    public Connection getConnection() throws SQLException {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException ex){
            ex.printStackTrace();
        }
        String user = "root";
        String pass = "root";
        String url = "jdbc:mysql://localhost:3306/lab10";
        return DriverManager.getConnection(url,user,pass);
    }

}
