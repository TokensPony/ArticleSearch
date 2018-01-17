<%-- 
    Document   : LandingPage
    Created on : Jan 10, 2018, 1:40:02 PM
    Author     : Connor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Article Search</title>
    </head>
    <body>
        <h1>Article Search</h1>
        <!--<video width="320" height="240" autoplay>
            <source src="Eye tracking a Mercedes Benz ad (EEG).mp4" type="video/mp4">
        </video>-->
        <div class="SearchBar">
            <form action="search.jsp" method="POST">
                <p>Search: <input type="text" name="terms" length="40">
                <p><input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
