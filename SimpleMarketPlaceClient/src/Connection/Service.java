/**
 * Service.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package Connection;

public interface Service extends java.rmi.Remote {
    public java.lang.String timestamp(java.lang.String f_name) throws java.rmi.RemoteException;
    public java.lang.String registration(java.lang.String f_name, java.lang.String l_name, java.lang.String email, java.lang.String password) throws java.rmi.RemoteException;
    public java.lang.String signUp(java.lang.String username, java.lang.String pwd) throws java.rmi.RemoteException;
    public java.lang.String getproducts() throws java.rmi.RemoteException;
    public java.lang.String addcart(java.lang.String submit) throws java.rmi.RemoteException;
    public java.lang.String checkout(java.lang.String trans_id, java.lang.String p_id, java.lang.String p_name, java.lang.String p_price, int qty) throws java.rmi.RemoteException;
}
