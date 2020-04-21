package Controller;

import entity.Article;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ArticleDAO;

/**
 * Purpose: Show the list of all Article or detail of Article by data
 *
 * Date : Mar 1, 2020, 8:45:39 PM
 *
 * @author viettqhe130524
 */
public class About extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //get the data and set number of page
            final int ARTICLE_PAGE = 2;
            String stPageCurrent = request.getParameter("page");
            String stArticle = request.getParameter("article");
            
            ArticleDAO articleDAO = new ArticleDAO();
            //check is show all off Article
            if (stPageCurrent != null && !stPageCurrent.isEmpty()) {
                int intPageCurrent = Integer.parseInt(stPageCurrent);

                List<Article> listArticle = articleDAO.getListAticle(ARTICLE_PAGE, intPageCurrent);
                request.setAttribute("listArticle", listArticle);

                // get number page to paging
                int numberPage = articleDAO.getNumberPage(ARTICLE_PAGE);
                request.setAttribute("numberPage", numberPage);

                // get page current
                request.setAttribute("pageCurrent", intPageCurrent);

                // get page current header
                request.setAttribute("boldAbout", "font-bold");

                request.getRequestDispatcher("/about.jsp").forward(request, response);
            } 
            //check when the click to one of Article and view detail it
            else if (stArticle != null && !stArticle.isEmpty()) {
                int intArticle = Integer.parseInt(stArticle);
                //get the article
                Article article = articleDAO.getArticleById(intArticle);
                request.setAttribute("article", article);
                
                request.setAttribute("boldAbout", "font-bold");
                
                request.getRequestDispatcher("/article.jsp").forward(request, response);
            }
        } catch (IOException | NumberFormatException | ServletException e) {
            request.setAttribute("Error", e);
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
