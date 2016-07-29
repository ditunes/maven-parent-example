#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ include file="/commons/taglibs.jsp"%>
<%-- Error Messages --%>
<c:if test="${symbol_dollar}{flash.success!=null}">
	<p class="message">${symbol_dollar}{flash.success}</p>
</c:if>

<%-- Info Messages --%>
<c:if test="${symbol_dollar}{flash.error != null}">
	<p class="error">${symbol_dollar}{flash.error}</p>
</c:if>



