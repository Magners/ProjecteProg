/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;


import entities.*;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
/**
 *
 * @author 47912513V
 */
@Stateless
public class NewSessionBean {

    @PersistenceUnit
    EntityManagerFactory emf;
    // insertar usuario
    public boolean insertUsuario(Usuario u) {
        if (!existUsuario(u)) {
            EntityManager em = emf.createEntityManager();
            em.persist(u);
            em.flush();  
            em.close();
            return true;
        }
        return false;
    }
    
        public boolean existUsuario(Usuario u) {
        EntityManager em = emf.createEntityManager();
        Usuario encontrado = em.find(Usuario.class, u.getNombreUsuario());
        em.close();
        return encontrado != null;
    }
  // insertar alquiler
            public boolean insertAlquiler(Alquiler a) {
        if (!existAlquiler(a)) {
            EntityManager em = emf.createEntityManager();
            em.persist(a);
            em.flush();  
            em.close();
            return true;
        }
        return false;
    }
    
        public boolean existAlquiler(Alquiler a) {
        EntityManager em = emf.createEntityManager();
        Alquiler encontrado = em.find(Alquiler.class, a.getIdAlquiler());
        em.close();
        return encontrado != null;        
    }
  //insertar producto
        public boolean insertProducto(Producto p) {
        if (!existProducto(p)) {
            EntityManager em = emf.createEntityManager();
            em.persist(p);
            em.flush();  
            em.close();
            return true;
        }
        return false;
    }
    
        public boolean existProducto(Producto p) {
        EntityManager em = emf.createEntityManager();
        Producto encontrado = em.find(Producto.class, p.getIdProducto());
        em.close();
        return encontrado != null;
    }
}
