Objective: An online shopping site provides the vegetables and Groceries items and also help customers purchase them online without having to visit the shop physically.
How it works:-
•	User fill all the details and create his account.
•	Now login with email id and password.
•	After login a home page will appear with a list of vegetables and groceries packages with their price and pack code.
•	User can add product by click on add product option and fill all the details required(pack code and quantity) and click on add button.
•	Now product is added to the the cart user can see cart by click on view cart button.
Techonology used:-
HTML,JSP,CSS,Java,MySql,Tomcat server.

Architecture:-
It follow MVC architecture embedded with DAO(Data Access Object).

![](mvcDAO.png)

(1) The Model part is in java class.
(2) The View part is in HTML and JSP.
(3) The Controller part is in JSP.
(4) DAO(Data Access Object) is used to Store and Retrive data from database.

Advantages:-
As we all know Corona virus is spreading rapidly therefore we should not go outside so user can order vegetables and Groceries packages online by using our site without going outside.

How it looks:-
![](index.png)

Class Diagram:-
![](gharGrahasthi/class_diagram.gif) 

(1)In this Class Diagram All classes are associated with Object class.
(2)We use DAO(Data Access Object)format and everything is done through Object.
(3)Every class uses other class methods by creating their objects so they are not directly associated to each other except for ShoppingDao class and Connection class because ShoppingDao class use static method getConnection() of ConnectionClass so ShoppingDao class has a Dependency on ConnectionClass,therefore it shows a dotted line.

