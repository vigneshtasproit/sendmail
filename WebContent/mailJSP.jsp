<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

<%
  
    String result;
 
     String to = request.getParameter("mail");
     String subject = request.getParameter("sub");
     String messg = request.getParameter("mess");

    final String from = "fpmsemail@avallis.com";
    final String pass = "I5me72p3";
      
     Properties props = new Properties();
     props.put("mail.smtp.host","smtp.office365.com");
     props.put("mail.smtp.auth", "true");
     props.put("mail.smtp.port", "587");
     props.put("mail.smtp.starttls.enable", true);
   //  props.put("mail.user", from);
   //  props.put("mail.password", pass);
   
     Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
         @Override
         protected PasswordAuthentication getPasswordAuthentication() {
             return new PasswordAuthentication(from, pass);
        }
     });
 
    try {
         MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        message.setSubject(subject);
        message.setText(messg);
        Transport.send(message);

        result = "Your mail sent successfully....";
        response.sendRedirect("index.jsp");
    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";
        response.sendRedirect("index.jsp");
    }

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>