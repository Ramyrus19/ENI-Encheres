package fr.eni.encheres.dal.ArticlesVendu;

import java.util.List;

import fr.eni.encheres.bo.ArticleVendu;

/**
 * @author Melvyn
 *
 */
public interface ArticleVenduDAO {
	
	public void insert(ArticleVendu article) throws ArticleVenduDALException;
//	public void update(ArticleVendu article) throws ArticleVenduDALException;
	public void delete(ArticleVendu article) throws ArticleVenduDALException;
	public List<ArticleVendu> selectByNom(String motCle) throws ArticleVenduDALException;
	public List<ArticleVendu> selectByNomAndCateg(String motCle, Integer idCat) throws ArticleVenduDALException;
	public List<ArticleVendu> selectByCategorie(Integer idCat) throws ArticleVenduDALException;
	
}
