<%@ page session="true" pageEncoding="UTF-8" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<!-- 
    * Change uri attribute to your deployment of this webapp.
    * The dataSource attribute is necessary for Mondrian's XMLA.
-->
<jp:xmlaQuery id="query02"
    uri="http://localhost:8080/mondrian/xmla"
    dataSource="Provider=Mondrian;DataSource=GermainDatamart;"
  	catalog="GermainDatamart">
SELECT 
  NON EMPTY { CrossJoin([Transaction Color].Members, [System Data Center].[Hostname].Members) } ON COLUMNS,
  { [Time].[2012].[2].Children } ON ROWS
FROM [Transaction]
WHERE ( [Measures].[Count] )
</jp:xmlaQuery>

<c:set var="title02" scope="session">Accessing Mondrian By XMLA (Germain Datamart)</c:set>
