package Controller;

import entity.Article;
import entity.Contact;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ArticleDAO;
import dao.ContactDAO;

/**
 * Purpose: Show the home of Web site
 *
 * Date : Mar 1, 2020, 8:45:39 PM
 *
 * @author viettqhe130524
 */
public class Home extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArticleDAO articleDAO = new ArticleDAO();
            ContactDAO contactDAO = new ContactDAO();
            //get the data of Article
            //First Article
            Article articleIntroduction = articleDAO.getArticle(1, 1).get(0);
            //On the left Article
            Article articleLeft = articleDAO.getArticle(2, 2).get(0);
            //On the right Article
            Article articleRight = articleDAO.getArticle(2, 2).get(1);

            request.setAttribute("articleIntro", articleIntroduction);
            request.setAttribute("articleLeft", articleLeft);
            request.setAttribute("articleRight", articleRight);
           //Get contact of Page
            Contact contactAddress = contactDAO.getContact("address").get(0);
            Contact contactPhone = contactDAO.getContact("phone").get(0);

            request.setAttribute("contactAddress", contactAddress);
            request.setAttribute("contactPhone", contactPhone);

            request.setAttribute("boldHome", "font-bold");

            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (IOException | ServletException e) {
            System.out.println(e);
            request.setAttribute("Error", "Error");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
