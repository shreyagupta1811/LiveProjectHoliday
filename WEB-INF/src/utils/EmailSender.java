package utils;

import java.util.Properties;

import javax.mail.Session;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.InternetAddress;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;

import javax.mail.Transport;
import javax.mail.Message;




public class EmailSender{
	public static void sendEmail(String toEmail,String message){
		Properties props = new Properties();

		props.put("mail.transport.protocol","smtp");
		props.put("mail.smtp.auth","true");
		props.put("mail.smtp.starttls.enable","true");
		props.put("mail.smtp.host","smtp.gmail.com");
		props.put("mail.smtp.port","587");
		
		Session session = Session.getInstance(props,new EmailAuthenticator());
				
		MimeMessage msg = new MimeMessage(session);
		
		try{
			msg.setFrom(new InternetAddress("tornadova943@gmail.com"));
			msg.setRecipients(Message.RecipientType.TO,toEmail);
			msg.setSubject("Email Test Code");
			msg.setText(message);

			Transport.send(msg);
		}catch(MessagingException e){
			e.printStackTrace();
		}		
	}
}

class EmailAuthenticator extends Authenticator{
	public PasswordAuthentication getPasswordAuthentication(){
		return new PasswordAuthentication("tornadova943@gmail.com","");
	}
}

