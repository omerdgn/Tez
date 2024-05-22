class DonaterModel {
  String? name;
  String? surname;
  String? phoneNum;
  String? eMail;
  int? donationCount;
  int? totalDonationAmount;

  DonaterModel(
      {this.name,
      this.surname,
      this.phoneNum,
      this.eMail,
      this.donationCount,
      this.totalDonationAmount});

  DonaterModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    surname = json['surname'];
    phoneNum = json['phoneNum'];
    eMail = json['eMail'];
    donationCount = json['donationCount'];
    totalDonationAmount = json['totalDonationAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['phoneNum'] = this.phoneNum;
    data['eMail'] = this.eMail;
    data['donationCount'] = this.donationCount;
    data['totalDonationAmount'] = this.totalDonationAmount;
    return data;
  }
}
