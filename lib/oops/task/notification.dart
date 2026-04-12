abstract class Notification{
  String message;
  Notification({required this.message});


  void send();

  void preview(){
    String shorted = message.length>20? message.substring(0,20) : message;
    print("Preview:$shorted");
  }

}

class SMSNotification extends Notification {
  String phoneNumber;

  SMSNotification({
    required String message,
    required this.phoneNumber,
  }) : super(message: message);

  @override
  void send() {
    print("Sending SMS to $phoneNumber: $message");
  }
}



class EmailNotification extends Notification {
  String toEmail;

  EmailNotification({
    required String message,
    required this.toEmail,
  }): super(message: message);

  @override
  void send() {
    print("Sending Email to $toEmail: $message");
  }
}


class AppNotification extends Notification {
  String userId;

  AppNotification({
    required String message,
    required this.userId,
  }): super(message: message);

  @override
  void send() {
    print("notification is pushed to user $userId: $message");
  }
}


void main(){
  List <Notification> notif = [
    SMSNotification(message: "Your messsage", phoneNumber: "986598986532"),
    EmailNotification(message: "This is email message", toEmail: "surajrana124563@gmial.com"),
    AppNotification(
      userId: "USR-001",
      message: "You have a new message from support team.",
    ),

  ];

  for (int i = 0; i < notif.length; i++) {
    print("");
    notif[i].preview();         //it  inherited  same behaviour
    notif[i].send();            // it overridden different behaviour
  }
  print("");

}