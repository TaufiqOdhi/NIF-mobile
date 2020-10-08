class AccountData {
  String fullname;
  String username;
  String email;

  AccountData({this.fullname, this.username, this.email});

  AccountData.fromJson(Map<String, dynamic> json) {
    fullname = json['fullname'];
    username = json['username'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullname'] = this.fullname;
    data['username'] = this.username;
    data['email'] = this.email;
    return data;
  }
}
