package br.com.fatec.projeto.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.fatec.projeto.model.RawMaterial;

@Repository
public class RawMaterialDAOImpl implements RawMaterialDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public RawMaterialDAOImpl() {

	}
	
	public RawMaterialDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
	 }
	
	 protected Session getSession(){
	        return sessionFactory.openSession();
	 }

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<RawMaterial> findAll() {
		List<RawMaterial> listRawMaterial = (List<RawMaterial>) sessionFactory.getCurrentSession().createCriteria(RawMaterial.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listRawMaterial;

	}

	@Override
	@Transactional
	public RawMaterial findById(int id) {
		String hql = "from RawMaterial where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<RawMaterial> listRawMaterial = (List<RawMaterial>) query.list();

		if (listRawMaterial != null && !listRawMaterial.isEmpty()) {
			return listRawMaterial.get(0);
		}
		return null;
	}

	@Override
	@Transactional
	public void saveOrUpdate(RawMaterial rawMaterial) {
		// TODO Auto-generated method stub
	    sessionFactory.getCurrentSession().saveOrUpdate(rawMaterial);
		
	}

	@Override
	@Transactional
	public void remove(int id) {
		// TODO Auto-generated method stub
		RawMaterial rawMaterialToDelete = new RawMaterial();
		rawMaterialToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(rawMaterialToDelete);
		
	}

}
