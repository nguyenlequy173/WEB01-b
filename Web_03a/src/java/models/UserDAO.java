/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.ArrayList;

/**
 *
 * @author tungi
 */
public class UserDAO {

    public ArrayList<UserDTO> list = new ArrayList<>();

    public UserDAO() {
        list.add(new UserDTO("admin", "admin", "nguyen van a"));
        list.add(new UserDTO("admin1", "admin2", "nguyen van b"));
    }

    public UserDTO searchByID(String username) {
        for (UserDTO userDTO : list) {
            if (userDTO.getUsername().equalsIgnoreCase(username)) {
                return userDTO;
            }

        }
        return null;
    }

    public UserDTO login(String username, String password) {
        UserDTO u = searchByID(username);
        if (u != null && u.getPassword().equals(password)) {
            return u;
        } else {
            return null;
        }
    }

}
