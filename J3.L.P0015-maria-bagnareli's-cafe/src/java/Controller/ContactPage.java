package Controller;

import entity.Contact;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ContactDAO;

/**
 * Purpose: Get the contact of cafe local and contact the show in web site
 *
 * Date : Mar 1, 2020, 8:45:39 PM
 *
 * @author viettqhe130524
 */
public class ContactPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ContactDAO contactDAO = new ContactDAO();
            //get the contact of cofe's house
            Contact contactPhone = contactDAO.getContact("phone").get(0);
            Contact contactEmail = contactDAO.getContact("email").get(0);
            List<Contact> listWork = contactDAO.getContact("work");

            request.setAttribute("contactPhone", contactPhone);
            request.setAttribute("contactEmail", contactEmail);
            request.setAttribute("Work", listWork);

            request.setAttribute("boldContact", "font-bold");

            request.getRequestDispatcher("/contact.jsp").forward(request, response);
        } catch (IOException | ServletException e) {
            request.setAttribute("Error", "Error");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
