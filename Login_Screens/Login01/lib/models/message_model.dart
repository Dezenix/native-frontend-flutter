class MessageModel{
  String? fullName;
  String? email;
  String? password;
  String? phone_no;
  String? uid;

  MessageModel(this.fullName,this.email,this.password,this.phone_no,this.uid);
  Map toJson(){
    return {};
  }
}
