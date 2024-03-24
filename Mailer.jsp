<%@page import='java.util.*,javax.mail.*,javax.mail.internet.*,javax.activation.*' %>
<%!
public  static void mailsend(String key, String email ) throws Exception
{


    String host = "smtp.gmail.com";
    String from = "ranganath.hi@gmail.com";
    String pass = "redbluereen";
    Properties props = System.getProperties();
    //props.put("mail.smtp.starttls.enable", "true"); // added this line
    
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

    String[] to = {email}; // added this line

    Session session = Session.getDefaultInstance(props, null);
    MimeMessage message = new MimeMessage(session);
    message.setFrom(new InternetAddress(from));

    InternetAddress[] toAddress = new InternetAddress[to.length];

    // To get the array of addresses
    for( int i=0; i < to.length; i++ ) { // changed from a while loop
        toAddress[i] = new InternetAddress(to[i]);
    }
    System.out.println(Message.RecipientType.TO);

    for( int i=0; i < toAddress.length; i++) { // changed from a while loop
        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
    }
    message.setSubject("sending in a Cloud");
    message.setText("Key:"+key);
    Transport transport = session.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();
}

%>