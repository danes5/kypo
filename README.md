##Client:
 **Redirect:**
  - add next line to /etc/hosts\
      <Server_IP>   hogwarts.ho

##Server:
 **Database:**
  - mysql 5.5.54 or higher
  - mysql should contains user with name "root" and password "kypo"\
    or edit source_code/web/src/main/java/web/Backend/Main.java line 24. and rebuild project 
  - for initialize database use script "kypo.sql"
  
 **Web:**
  - recomended Tomcat8
  - copy file "ROOT.war" into directory "webapps" inside tomcat on server\
    /var/lib/tomcat8/webapps if this path is wrong try "find / -type d -name "webapps"