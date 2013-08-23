<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" dataSource="jdbc/gdatamart" catalogUri="/WEB-INF/queries/GermainDatamart.xml">
SELECT 
  { [Time].[2012].[2].[5].Children } ON COLUMNS,
  { [Transaction Name].Members } ON ROWS
FROM [Transaction]
WHERE ( [Measures].[Count] )
</jp:mondrianQuery>





<c:set var="title01" scope="session">Test Query uses Mondrian OLAP</c:set>
