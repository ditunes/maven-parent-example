<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/commons/meta.jsp"%>
<title><template:block name="title">三脉科技</template:block></title>
<!--css lib begin-->
<!--css lib end-->
<!--js lib begin-->
<script src="${base}/js/rest.js" type="text/javascript"></script>
<!--js lib end-->
<template:block name="head">head</template:block>
<!--[if IE 6]>
<style type="text/css" >
p.error span, p.info span, p.notice span, p.success span { 
	postion:static;
    margin-right:15px;
}
p.todoitem a.close {
	margin-right:10px;
}
button.green, button.brown {
	padding:0px !important;
}
</style>
<![endif]-->
</head>
<body>
<template:block name="content">base_body_content</template:block>
</body>
</html>