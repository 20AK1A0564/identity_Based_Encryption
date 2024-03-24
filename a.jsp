<%@ page import="java.sql.*,hi.*,java.util.*"%>
<%@include file="Mailer.jsp"%>
<%

out.println("Started");
//mailsend("hi", "rananath.hi@gmail.com");
 
// Recipient's email ID needs to be mentioned.
      String to = "ranga1nath@gmail.com";

      // Sender's email ID needs to be mentioned
      String from = "ranganath.hi@gmail.com";

      // Assuming you are sending email from localhost
      String host = "localhost";

      // Get system properties
      Properties properties = System.getProperties();

      // Setup mail server
      properties.setProperty("mail.smtp.host", host);
properties.setProperty("auth","Container");
    properties.setProperty("type","javax.mail.Session");
    properties.setProperty("mail.smtp.host","smtp.gmail.com");
    properties.setProperty("mail.smtp.port","465");
    properties.setProperty("mail.smtp.auth","true");
    properties.setProperty("mail.smtp.user","ranganath.hi@gmail.com");
    properties.setProperty("password","redbluegreen");
    properties.setProperty("mail.smtp.starttls.enable","true");
    properties.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");

      // Get the default Session object.
      Session session1 = Session.getDefaultInstance(properties);

      try {
         // Create a default MimeMessage object.
         MimeMessage message = new MimeMessage(session1);

         // Set From: header field of the header.
         message.setFrom(new InternetAddress(from));

         // Set To: header field of the header.
         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

         // Set Subject: header field
         message.setSubject("This is the Subject Line!");

         // Now set the actual message
         message.setText("This is actual message");

 Transport transport = session1.getTransport("smtp");

    transport.connect("ranganath.hi@gmail.com", "redbluegreen");
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();

         System.out.println("Sent message successfully....");
      } catch (MessagingException mex) {
         mex.printStackTrace();
      }
   %>