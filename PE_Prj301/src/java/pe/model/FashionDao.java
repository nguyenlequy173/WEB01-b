/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.model;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import pe.utils.DbUtils;

/**
 *
 * @author Computing Fundamental - HCM Campus
 */
public class FashionDao {

    //-----            your code here   --------------------------------
    public ArrayList<FashionDto> filterByColumn(String column, String value) {
        ArrayList<FashionDto> list = new ArrayList<>();
        try {
            Connection conn = DbUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(" SELECT * FROM tblFashion WHERE status = 1 AND " + column + " LIKE ? ");
            ps.setString(1, "%" + value + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                Double price = rs.getDouble("price");
                String size = rs.getString("size");
                boolean status = rs.getBoolean("status");
                FashionDto fashion = new FashionDto(id, name, description, price, size, status);
                list.add(fashion);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public ArrayList<FashionDto> filterByName(String name) {
        return filterByColumn("name", name);
    }

}
