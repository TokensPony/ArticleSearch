<%@ page import = "java.util.regex.Matcher"%>
<%@ page import = "java.util.regex.Pattern"%>

<%@ page import="java.sql.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:set var = "terms" value = "${param.terms}"/>
        <sql:query var="result" scope="request" dataSource="jdbc/sample">
            SELECT * FROM ARTICLEDATA
        </sql:query>
        
            <!--Once I get all entries in the database. I will use Java REGEX or Java String
            functions to compare the value found in the input field and see if it simply exists
            in any capacity in the article, if so, it will post the link, otherwise
            it will skip it.-->
            <table>
                <tr>
                    <th>Date</th>
                    <th>Title</th>
                </tr>
                <c:forEach var = "row" items="${result.rows}">
                    <c:set var = "input" value = "${row.fulltext}"/>
                    <c:if test = "${fn:contains(input, terms)}">
                        <tr>
                            <td><c:out value="${row.date}"/></td><td><a href="<c:out value="${row.url}"/>"><c:out value="${row.title}"/></a></td>
                        </tr>
                    </c:if>
                </c:forEach>
            </table>
        </body>
    </html>
