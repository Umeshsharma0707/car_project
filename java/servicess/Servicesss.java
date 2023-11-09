package servicess;

import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.mysql.cj.Session;
import com.mysql.cj.protocol.Message;

public class Servicesss {
	public void sendMail(String emailid,int num){
		final String username  = "servicecar986@gmail.com";
		final String password  = "mfixwehulvcitgiu";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.debug", "true");
		props.put("mail.smtp.starttls.required", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
//		
		javax.mail.Session session = javax.mail.Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		System.out.println("session complete");
		try {
			System.out.println("1");
			javax.mail.Message message = new MimeMessage(session);
			System.out.println("2");
			message.setFrom(new InternetAddress(username));
			System.out.println("3");
			message.setRecipients(javax.mail.Message.RecipientType.TO,InternetAddress.parse(emailid));//to mail address.
			System.out.println("4");
			message.setSubject("Hi This Is OPT Testing");
			message.setText("Hello This Is OTP for forgot password : "+num);
			System.out.println("5");
			Transport.send(message);
			System.out.println("Done");
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}		
	}
}
