package mappings;
// Generated Nov 28, 2015 1:33:19 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * UserTypes generated by hbm2java
 */
public class UserTypes  implements java.io.Serializable {


     private Integer iduserTypes;
     private String userType;
     private Set users = new HashSet(0);

    public UserTypes() {
    }

    public UserTypes(String userType, Set users) {
       this.userType = userType;
       this.users = users;
    }
   
    public Integer getIduserTypes() {
        return this.iduserTypes;
    }
    
    public void setIduserTypes(Integer iduserTypes) {
        this.iduserTypes = iduserTypes;
    }
    public String getUserType() {
        return this.userType;
    }
    
    public void setUserType(String userType) {
        this.userType = userType;
    }
    public Set getUsers() {
        return this.users;
    }
    
    public void setUsers(Set users) {
        this.users = users;
    }




}


