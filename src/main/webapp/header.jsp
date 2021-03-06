<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ page import="java.util.Locale" %>
<%@ page import="java.util.ResourceBundle" %>

<%
    Locale locale = (Locale) request.getSession(false).getAttribute("locale");
    if(locale==null){
        locale=Locale.US;
    }
    ResourceBundle bundle = ResourceBundle.getBundle("i18n", locale);
    String strAnswer = request.getParameter("answer");
    System.out.println(strAnswer);
    if (strAnswer != null) {
        out.print(bundle.getString(strAnswer));
    }

%>
<title><%
    String title = (String) request.getAttribute("title");
    if(title!=null) {
        out.print(bundle.getString((String) request.getAttribute("title")));
    }else{
        out.print(request.getAttribute("titleWithName")); //titleWithName
    }
%></title>
<meta charset="utf-8">
<!-- connect bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
      integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
        integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
        crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="css/login.css">