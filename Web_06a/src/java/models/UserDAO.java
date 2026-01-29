/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.HashSet;
import utils.DbUtils;
import java.sql.PreparedStatement;

/**
 *
 * @author admin
 */
public class UserDAO {
    public UserDAO(){
}
    public UserDTO searchByID(String username) {
     try{
         Connection conn= DbUtils.getConnection();
         String sql= "SELECT * FROM tblUser "
                 + "WHERE userID=?";
         System.out.println(sql);
         PreparedStatement pst = conn.prepareStatement(sql);
         pst.setString(1, username);
         ResultSet rs= pst.executeQuery();
         
         UserDTO user= null;
         while(rs.next()) {
             String userID= rs.getString("userID");
             String fullName= rs.getString("fullName");
             String password= rs.getString("password");
             String roleID= rs.getString("roleID");
             boolean status= rs.getBoolean("status");
             user = new UserDTO(userID, fullName, password, roleID, status);
         }
         System.out.println(user);
         return user;
     }   catch(Exception e){
         return null;
     }
    }
public UserDTO login(String username, String password) {
    UserDTO u= searchByID(username);
    if(u != null && u.getPassword().equals(password)){
        return u;
    }
    return null;
}
}