
package com.Service;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailService 
{
	 public  void EmailSend(String[] list) 
	 {
	
		  String host     = "smtp.naver.com";
		  final String user   = "rhkddy77";
		  final String password  = "Skdlwma12!";
		
		  
		  for(int i=0; i<list.length; i++)
		  {
			  String to  = list[i];
			  
			  // Get the session object
			  Properties props = new Properties();
			  props.put("mail.smtp.host", host);
			  props.put("mail.smtp.auth", "true");

			  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() 
			  {
				  protected PasswordAuthentication getPasswordAuthentication() 
				  {
					  return new PasswordAuthentication(user, password);
				  }
			  });

			  // Compose the message
			  try 
			  {
				  MimeMessage message = new MimeMessage(session);
				  message.setFrom(new InternetAddress(user));
				  message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			   // Subject
				  message.setSubject("[ġ���̿;��̵�]������ ��û�Ͻ� �м��� �Ϸ�Ǿ����ϴ�.");
			   
			   // Text
				  message.setText("[ġ���̿;��̵�]������ ��û�Ͻ� �м��� �Ϸ�Ǿ����ϴ�.\n�Ʒ� ��ũ�� �����Ͽ� Ȯ�����ּ���\n www.naver.com ");

			   // send the message
				  Transport.send(message);
				  System.out.println("message sent successfully...");

			  } 
			  catch (MessagingException e) 
			  {
				  e.printStackTrace();
			  }

		  }
	 }
}
