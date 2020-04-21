/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mapper;

import entity.Article;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Purpose: Mapping data of Article
 *
 * Date : Mar 1, 2020, 8:45:39 PM
 *
 * @author viettqhe130524
 */
public class ArticleMapper implements RowMapper<Article> {

    /**
     * Purpose: Mapping data of Article with Result set Return Article if mapping
     * success and null if error
     *
     * Date : Mar 1, 2020, 8:45:39 PM
     *
     * @author viettqhe130524
     */
    @Override
    public Article mapRow(ResultSet rs) {
        try {
            int id = rs.getInt("id");
            int type = rs.getInt("type");
            String title = rs.getString("title").trim();
            String content = rs.getString("content").trim();
            String image = rs.getString("image").trim();
            Date date = rs.getDate("date");

            return new Article(id, type, title, content, image, date);
        } catch (SQLException e) {
            System.out.println("Cannt get the Article");
        }
        return null;
    }

}
