package dao;

import Mapper.ArticleMapper;
import entity.Article;
import java.util.List;

/**
 * Purpose: Connect with database and get the value of Article
 *
 * Date : Mar 1, 2020, 8:45:39 PM
 *
 * @author viettqhe130524
 */
public class ArticleDAO extends GennericDAO {

    /**
     *
     * Purpose: Get the top of Article order by date and get data follow number
     * Article input into
     * 
     * Date : Mar 1, 2020, 8:45:39 PM
     * @param numberArticle - number will be get
     * @param typeArticle - type of Article
     * @return list of Article or null
     * @author viettqhe130524
     */
    public List<Article> getArticle(int numberArticle, int typeArticle) {

        String sql = "SELECT TOP (?) * "
                + "FROM Article WHERE type = (?)"
                + "ORDER BY Date DESC";

        return query(sql, new ArticleMapper(), numberArticle, typeArticle);
    }

    /**
     *
     * Purpose: Get the detail of Article by id of Article input
     * 
     * Date : Mar 1, 2020, 8:45:39 PM
     * 
     * @param id - id of Article
     * @return Article or null
     * @author viettqhe130524
     */
    public Article getArticleById(int id){

        String sql = "SELECT * FROM Article WHERE id = (?)";
        List<Article> listArticle = query(sql, new ArticleMapper(), id);
        return (listArticle.isEmpty() ? null : listArticle.get(0));
    }

    /**
     *
     * Purpose: Get the list of Article in one page follow number of Article in 
     * one page and page current
     * 
     * Date : Mar 1, 2020, 8:45:39 PM
     * 
     * @param numberArticleInPage
     * @param pageCurrent
     * @return list of Article or null
     * @author viettqhe130524
     */
    public List<Article> getListAticle(int numberArticleInPage, int pageCurrent) {

        String sql = "SELECT * FROM (\n"
                + "SELECT ROW_NUMBER()\n"
                + "OVER(ORDER BY id) as Number,\n"
                + "* FROM Article \n"
                + ") as DataSearch where Number between ? and ?";
        int articleFrom = pageCurrent * numberArticleInPage - 1;
        int articleTo = articleFrom + numberArticleInPage - 1;

        return query(sql, new ArticleMapper(), articleFrom, articleTo);
    }

    /**
     *
     * Get total page follow number of Article in page
     * 
     * Date : Mar 1, 2020, 8:45:39 PM
     * @param numberArticleInPage
     * @return
     * @author viettqhe130524
     */
    public int getNumberPage(int numberArticleInPage) {

        String sql = "SELECT COUNT(id) FROM Article";

        int numberArticle = count(sql);
        if (numberArticle == -1) {
            return -1;
        }
        return (numberArticle + (numberArticle % numberArticleInPage)) / numberArticleInPage;

    }
}
