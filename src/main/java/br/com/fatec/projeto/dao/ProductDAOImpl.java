package br.com.fatec.projeto.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.projeto.model.Product;

@Repository
public class ProductDAOImpl {
	
	@Autowired
	private SessionFactory sessionFactory;

	public ProductDAOImpl() {

	}
	
	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
	 }
	
	 protected Session getSession(){
	        return sessionFactory.openSession();
	 }

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> findAll() {
		List<Product> listProduct = (List<Product>) sessionFactory.getCurrentSession().createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listProduct;
	}

	@Transactional
	public Product findById(int id) {
		String hql = "from Product where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();

		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		return null;

	}

	@Transactional
	public void saveOrUpdate(Product product) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(product);

		
	}
	
	@Transactional
	public void remove(int id) {
		// TODO Auto-generated method stub
		Product productToDelete = new Product();
		productToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(productToDelete);
		
	}

}
