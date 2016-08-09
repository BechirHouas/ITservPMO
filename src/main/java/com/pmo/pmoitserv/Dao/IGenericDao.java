/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author saif
 */
public interface IGenericDao<T, ID extends Serializable> {
    
        T save(T entity);

	T update(T entity);

	T update(ID id);
	
	void delete(T entity);

	void delete(ID id);

	T findById(ID id);

	List<T> findAll();
	
	void flush();
    
}
