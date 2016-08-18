/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */

@Repository
public abstract class GenericDao<T, ID extends Serializable> implements
		IGenericDao<T, ID> {
    
    
        @PersistenceContext(unitName = "MY_P_U")
        private EntityManager entityManager;
        
        private final Class<T> persistentClass;

	public GenericDao(final Class<T> persistentClass) {
		this.persistentClass = persistentClass;
             entityManager = Persistence.createEntityManagerFactory("MY_P_U").createEntityManager();
             
	}

	protected EntityManager getEntityManager() {
		return entityManager;
	}

	
	public void setEntityManager(final EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public Class<T> getPersistentClass() {
		return persistentClass;
	}

	@Transactional
	public T findById(final ID id) {
               try{
		final T entity = getEntityManager().find(getPersistentClass(), id);
                return entity;
               }catch(Exception e){
               e.printStackTrace();
                   getEntityManager().clear();
               }
                           
	return null;
	}

	public List<T> findAll() {
             try{
		return getEntityManager().createQuery(
				"select x from " + getPersistentClass().getSimpleName() + " x")
				.getResultList();
             }catch(Exception e){
                 e.printStackTrace();
                 getEntityManager().clear();
             }
             return null;
	}

	@Transactional
	public T save(final T entity) {
               EntityTransaction entityTransaction = getEntityManager().getTransaction();
               entityTransaction.begin();
		try{
                getEntityManager().persist(entity);
                entityTransaction.commit();
                }catch(Exception e){
                   e.printStackTrace();
                   getEntityManager().clear();
                    
                }
                return entity;
	}

	@Transactional
	public T update(final T entity) {
                EntityTransaction entityTransaction = getEntityManager().getTransaction();
                entityTransaction.begin();
                try{
		final T mergedEntity = getEntityManager().merge(entity);
                entityTransaction.commit();
                return mergedEntity;
                 }catch(Exception e){
                   getEntityManager().clear();
                    
                }
		return entity;
	}

	@Transactional
	public T update(final ID id) {
		T t = findById(id);
                EntityTransaction entityTransaction = getEntityManager().getTransaction();
                entityTransaction.begin();
                try{
		final T mergedEntity = getEntityManager().merge(t);
                entityTransaction.commit();
		return mergedEntity;
                 }catch(Exception e){
                   getEntityManager().clear();
                    
                }
		return t;
	}

	@Transactional
	public void delete(final T entity) {
                EntityTransaction entityTransaction = getEntityManager().getTransaction();
                entityTransaction.begin();
                 try{
		getEntityManager().remove(entity);
                entityTransaction.commit();
                }catch(Exception e){
                  getEntityManager().clear();
                    
                }
	}

	@Transactional
	public void delete(final ID id) {
		final T t = findById(id);
              
		delete(t);
               
	}

	public void flush() {
		getEntityManager().flush();
	}
    
}
