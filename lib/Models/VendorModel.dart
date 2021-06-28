class VendorModel {
  final String FirstandLastName;
  final int PhoneNumber;
  final String ShopName;
  final String SocialMedia;
  final DateTime DateofBirth;
  final String Referredby;
  final String EmailAddress;
  final String RetypeEmailAddress;
  final String Password;
  final String RetypePassword;

  VendorModel({
    this.FirstandLastName,
    this.PhoneNumber,
    this.ShopName,
    this.DateofBirth,
    this.Referredby,
    this.EmailAddress,
    this.RetypeEmailAddress,
    this.Password,
    this.RetypePassword,
    this.SocialMedia,
  });
  VendorModel copy({
    String FirstandLastName,
    int PhoneNumber,
    String ShopName,
    DateTime DateofBirth,
    String Referredby,
    String EmailAddress,
    String RetypeEmailAddress,
    String Password,
    String RetypePassword,
    String SocialMedia,
  }) {
    return VendorModel(
      FirstandLastName: FirstandLastName,
      PhoneNumber: PhoneNumber,
      ShopName: ShopName,
      DateofBirth: DateofBirth,
      Referredby: Referredby,
      EmailAddress: EmailAddress,
      RetypeEmailAddress: RetypeEmailAddress,
      Password: Password,
      RetypePassword: RetypePassword,
      SocialMedia: SocialMedia,
    );
  }
}
