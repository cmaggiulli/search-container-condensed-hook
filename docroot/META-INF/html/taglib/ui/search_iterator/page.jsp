<%@ taglib uri="http://liferay.com/tld/util" prefix="liferay-util" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<liferay-util:buffer var="html">
    <liferay-util:include page="/html/taglib/ui/search_iterator/page.portal.jsp" />
</liferay-util:buffer>

<c:set var="html" value="${fn:replace(html, 'table-striped', 'table-striped table-condensed ')}" />
<c:out value="${html}" escapeXml="false" />