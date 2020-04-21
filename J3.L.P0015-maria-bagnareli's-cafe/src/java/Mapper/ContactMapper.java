/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mapper;

import entity.Contact;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Purpose: Mapping data of Contact
 *
 * Date : Mar 1, 2020, 8:45:39 PM
 *
 * @author viettqhe130524
 */
public class ContactMapper implements RowMapper<Contact> {
/**
     * Purpose: Mapping data of Contact with Result set Return Contact if mapping
     * success and null if error
     *
     * Date : Mar 1, 2020, 8:45:39 PM
     *
     * @author viettqhe130524
     */
    @Override
    public Contact mapRow(ResultSet rs) {
        try {
            int id = rs.getInt("id");
            String typeContact = rs.getString("type").trim();
            String key = rs.getString("key").trim();
            String value = rs.getString("value").trim();

            return new Contact(id, typeContact, key, value);
        } catch (SQLException e) {
            System.out.println("Can't get the contact");
        }
        return null;
    }

}
