package Connection;

public class ServiceProxy implements Connection.Service {
  private String _endpoint = null;
  private Connection.Service service = null;
  
  public ServiceProxy() {
    _initServiceProxy();
  }
  
  public ServiceProxy(String endpoint) {
    _endpoint = endpoint;
    _initServiceProxy();
  }
  
  private void _initServiceProxy() {
    try {
      service = (new Connection.ServiceServiceLocator()).getService();
      if (service != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)service)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)service)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (service != null)
      ((javax.xml.rpc.Stub)service)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public Connection.Service getService() {
    if (service == null)
      _initServiceProxy();
    return service;
  }
  
  public java.lang.String timestamp(java.lang.String f_name) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.timestamp(f_name);
  }
  
  public java.lang.String registration(java.lang.String f_name, java.lang.String l_name, java.lang.String email, java.lang.String password) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.registration(f_name, l_name, email, password);
  }
  
  public java.lang.String signUp(java.lang.String username, java.lang.String pwd) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.signUp(username, pwd);
  }
  
  public java.lang.String getproducts() throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.getproducts();
  }
  
  public java.lang.String addcart(java.lang.String submit) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.addcart(submit);
  }
  
  public java.lang.String checkout(java.lang.String trans_id, java.lang.String p_id, java.lang.String p_name, java.lang.String p_price, int qty) throws java.rmi.RemoteException{
    if (service == null)
      _initServiceProxy();
    return service.checkout(trans_id, p_id, p_name, p_price, qty);
  }
  
  
}