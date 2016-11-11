<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <title>Crud Application</title>   
    </head>
    <body>
        <div id="body">
            <div style="color:red;">
                <c:if test="${!errMsgs.isEmpty()}">
                    ${errMsgs.get(0)}
                </c:if>
            </div>
            <div id="header">
                <h1><spring:message code="lbl.person" text="PERSON" /></h1>
                 <div>
                Language : <a href="?language=en">English</a> | <a href="?language=zh_CN">Chinese</a>
                Current Locale : ${pageContext.request.locale}
            </div>
            </div>   
            <div>
                <form action="/personController" method="GET">   
                    <button type="submit" name="action" value="CREATE"><spring:message code="lbl.create" text="CREATE" /></button>
                    <br><br>   
                    <spring:message code="lbl.enter.personId" text="Enter Person ID:" /> <input type="number" name="personId" placeholder="##">
                    <button type="submit" name="action" value="SEARCH"><spring:message code="lbl.search" text="SEARCH" /></button>   
                    <br><br>
                    <div>   
                        <spring:message code="lbl.view.person.list" text="View Person List by:" />
                        <select name="list">
                            <option value="1" checked><spring:message code="lbl.gwa" text="GWA" />
                            <option value="2"><spring:message code="lbl.lastname" text="Last Name" />
                            <option value="3"><spring:message code="lbl.datehired" text="Date Hired" />
                            <option value="4"><spring:message code="lbl.personid" text="PERSON ID" />
                        </select>
                        <spring:message code="lbl.sort" text="Sort by:" /> 
                        <select name="order">
                            <option value="1" checked><spring:message code="lbl.asc" text="Ascending" />
                            <option value="2"><spring:message code="lbl.desc" text="Descending" />
                        </select>
                        
                        <button type="submit" name="action" value="LIST"><spring:message code="lbl.list" text="LIST" /></button>
                      </div>
                    <br><br>
                </form> 
                <a href="index.jsp?language=${pageContext.request.locale.language}"><button type="submit" name="action" value="BACK"><spring:message code="lbl.back.main" text="BACK TO MAIN" /></button></a> 
            </div>
        </div>
    </body>
</html>
