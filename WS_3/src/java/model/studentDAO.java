/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.sql.Date;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.DbUtils;

/**
 *
 * @author admin
 */
public class studentDAO {
    public ArrayList<studentDTO> filterByColumn(String column, String value){
        ArrayList<studentDTO> list= new ArrayList<>();
        try {
            Connection conn= DbUtils.getConnection();
            PreparedStatement ps= conn.prepareStatement(" SELECT * FROM tblStudent WHERE status = 1 AND " + column + " LIKE ? ");
            ps.setString(1, "%" + value + "%");
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
       
                String studentID= rs.getString("studentID");
                String fullName= rs.getString("fullName");
                String gender= rs.getString("gender");
                Date dateOfBirth= rs.getDate("dateOfBirth");
                String email= rs.getString("email");
                String phone= rs.getString("phone");
                String address= rs.getString("address");
                String city= rs.getString("city");
                String major= rs.getString("major");
                String faculty= rs.getString("faculty");
                int enrollYear= rs.getInt("enrollYear");
                double gpa= rs.getDouble("gpa");
                boolean scholarship= rs.getBoolean("scholarship");
                boolean status= rs.getBoolean("status");
                studentDTO student= new studentDTO(studentID, fullName, gender, dateOfBirth, email, phone, address, city, major, faculty, enrollYear, gpa, scholarship, status);
            list.add(student);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }return list;
    }

    public ArrayList<studentDTO> filterByName(String fullName) {
return filterByColumn("fullName", fullName);
    }
}
