
Fog Computing Security Project

📌 Overview
This project is a web-based application developed using Java Server Pages (JSP) to demonstrate concepts related to fog computing and security. It provides a basic structure for handling web requests, user interaction, and secure data processing.
  
🛠️ Technologies Used
* Java (JSP & Servlets)
* HTML, CSS, JavaScript
* Apache Tomcat Server

   📁 Project Structure
fog-computing-security/
│
├── A_MainPage.jsp
├── jsp/
├── html/
├── css/
├── js/
├── images/
└── WEB-INF/
    ├── web.xml
    ├── classes/
    └── lib/

🚀 How to Run the Project

 1. Prerequisites
* Install Java (JDK 8 or above)
* Install Apache Tomcat Server
* Set up environment variables (JAVA_HOME)

2. Deployment Steps
1. Copy the project folder into Tomcat's `webapps` directory
2. Start the Tomcat server
3. Open a browser and go to:
   http://localhost:8080/fog-computing-security

 🔐 Features

* User interface built with JSP and HTML
* Basic structure for implementing security mechanisms
* Modular folder organization for scalability

 📄 Configuration

Make sure the `WEB-INF/web.xml` file is properly configured:
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee" version="3.1">
    <welcome-file-list>
        <welcome-file>A_MainPage.jsp</welcome-file>
    </welcome-file-list>
</web-app>


 📌 Notes

* Ensure the `WEB-INF` folder name is in uppercase
* JSP files should be placed outside `WEB-INF` for direct access
* Add required `.jar` files in the `lib` folder if needed

 👩‍💻 Author
SHAIK NAZEEMA
 📃 License

This project is for educational purposes.

