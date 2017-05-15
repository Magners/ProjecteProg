/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.*;
import static java.lang.Boolean.*;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

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


 public boolean userpass(String usn,String pass) {

        EntityManager em = emf.createEntityManager();
        
        Query usuario1=em.createNamedQuery("Usuario.findByNombreUsuario");
        usuario1.setParameter("nombreUsuario", usn);
                        
        Usuario result1 = (Usuario) usuario1.getSingleResult(); 
        if (result1.getNombreUsuario().equalsIgnoreCase(usn)&& result1.getPassword().equalsIgnoreCase(pass)) {
           return TRUE;
        } else {
            return FALSE;
        }
    }
 
 
 public List<Producto> getpr (String item){
     
     EntityManager em = emf.createEntityManager();
        
        Query prs=em.createNamedQuery("Producto.findByTipo");
        prs.setParameter("tipo", item);
        
        List<Producto> result = prs.getResultList();
     return result;
 }
 
     
        
 }
