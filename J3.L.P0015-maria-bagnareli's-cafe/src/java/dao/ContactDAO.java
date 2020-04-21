package dao;

import Mapper.ContactMapper;
import entity.Contact;
import java.util.List;

/**
 * Purpose: Connect with database and get the value of Contact
 *
 * Date : Mar 1, 2020, 8:45:39 PM
 *
 * @author viettqhe130524
 */
public class ContactDAO extends GennericDAO{

    public List<Contact> getContact(String type) {

        String sql = "SELECT * FROM Contact WHERE type = (?)";

        return query(sql, new ContactMapper(), type);
    }
}
