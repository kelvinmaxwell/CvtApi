package app.karimax.cvt.config;

import app.karimax.cvt.dto.InviteUser;
import app.karimax.cvt.model.ForumInvites;
import app.karimax.cvt.repository.InviteUserRepsitory;

import lombok.RequiredArgsConstructor;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.util.List;

// @Component
@Service
@RequiredArgsConstructor
public class EmailProcessor {




    private final InviteUserRepsitory inviteUserRepsitory;


    private final JavaMailSender mailSender;

    @Scheduled(cron = "0 0 */3 * * *")
    public boolean sendUserRegistrationEmail(){



        List<ForumInvites> unprocessedEmails = inviteUserRepsitory.findunsentmessages();



        for (ForumInvites emailQueue : unprocessedEmails) {

            sendEmail(emailQueue);
        }

        return true;
    }

    public boolean sendEmail(ForumInvites emailQueue) {

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(emailQueue.getInvite_to());
        message.setSubject("cvt invite");
        message.setText("You have a pending cvt group invite");

        mailSender.send(message);

        emailQueue.setSending_status(1);
        inviteUserRepsitory.save(emailQueue);
        return true;
    }

}
