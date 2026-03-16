/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import pe.utils.DbUtils;

/**
 *
 * @author Computing Fundamental - HCM Campus
 */
public class UserDao {
    //-----            your code here   --------------------------------
   public UserDto login(String username, String password){
       UserDto user=searchByID(username);
       if(user.getPassword().equals(password)){
           return user;
       }return null;
   } 

    private UserDto searchByID(String id) {
        UserDto user= null;
        try {
            Connection conn= DbUtils.getConnection();
            PreparedStatement ps=conn.prepareStatement(" SELECT * FROM tblUsers WHERE userID = ? ");
            ps.setString(1, id);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                String userID= rs.getString("userID");
                String fullName= rs.getString("fullName");
                String password= rs.getString("password");
                String roleID= rs.getString("roleID");
                Boolean status= rs.getBoolean("status");
                user = new UserDto(userID, fullName, password, roleID, status);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }return user;
    }
}
