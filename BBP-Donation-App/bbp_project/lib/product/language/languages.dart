import 'package:bbp_project/product/home_page_view.dart';
import 'package:bbp_project/product/sign_up_donater_username_view.dart';

///Bu class porjedeki text yapılarını bir arada tutarak
///düzenleme ve güncellemeyi sağlamak için oluşturuldu

class LanguageItems {
  //main.dart
  static const mainTitle = 'Bilgisayarsızları Bilgisayarlandırma Projesi';

  //home_page_view.dart
  static int computersDonated = HomePageViewState.numberOfComputersDonated;
  static const homePageViewAppBarTitle = 'EĞİTİMDE TEKNOLOJİ İHTİYAÇTIR!';
  static const homePageViewHesapOlusturButtonText = 'Hesap Oluştur';
  static const homePageViewGirisYapButtonText = 'Giriş Yap';
  static const homePageViewBizKimizButtonText = 'Biz\n Kimiz?';
  static const homePageViewIletisimButtonText = 'İletişim';
  static const homePageViewProjectNameTitle = 'BİLGİSAYARSIZ ÖĞRENCİ KALMASIN!';
  static const homePageViewProjectDescriptionParagraph =
      'Üniversitemizin bilgisayara sahip olabilmek için\nmaddi desteğe ihtiyaç duyan öğrencilerimize destek oluyoruz.\nHesap oluşturarak bağış yapabilir veya üniversitemizin öğrencisi olarak bilgisayar başvurusunda bulunabilirsiniz.';
  static final homePageViewTextOfStudentCountHasDonatedComputer =
      'BBP İle Bugüne Kadar\n ${computersDonated.toString()} Öğrenciye\nBilgisayar Hediye Edebilmenin Mutluluğunu Yaşıyoruz!';

  //applicant_registration_form_view.dart
  static const applicantRegistrationFormViewAppBarTitle = 'Başvuru Kayıt Formu';
  static const applicantRegistrationFormViewIsimLabelText = 'İsim';
  static const applicantRegistrationFormViewIsimHintText = 'Örn: Umut Yusuf';
  static const applicantRegistrationFormViewSoyIsimLabelText = 'Soyisim';
  static const applicantRegistrationFormViewSoyIsimHintText = 'Örn: Çınar';
  static const applicantRegistrationFormViewNumaraLabelText = 'Numara';
  static const applicantRegistrationFormVieWNumaraHintText = 'Örn: 542xxxxx';
  static const applicantRegistrationFormViewEmailLabelText = 'Email';
  static const applicantRegistrationFormViewEmailHintText =
      'ornekmail@gmail.com';
  static const applicantRegistrationFormViewAdresLabelText = 'Adres';
  static const applicantRegistrationFormViewAdresHintText =
      'Açık adresinizi giriniz';
  static const applicantRegistrationFormViewTarihLabelText = 'Tarih';
  static const applicantRegistrationFormViewTarihHintText = 'Örn: 12.12.2000';
  static const applicantRegistrationFormViewCheckBoxText = 'Aktif OBS Kaydı';
  static const applicantRegistrationFormViewGonderElevatedButtonText = 'Gönder';

  //acoount_type_choosing_new_account_view.dart
  final String accountTypeChoosingNewAccountChoosingMainText =
      'Lütfen Hesap Kayıt Türünü Seçiniz';
  final String accountTypeChoosingNewAccountApplicantAccountText =
      'Başvuru Hesabı (Aktif OBS)';
  final String accountTypeChoosingNewAccountDonatertAccountText =
      'Bağışçı Hesabı';
  final String accountTypeChoosingNewAccountApplicantAccountCaption =
      "Aktif üniversite kaydı olan ve bilgisayar almak için maddi durumu olmayan öğrencilerimiz başvuru hesabı oluşturarak başvuruda bulunabilirler.";
  final String accountTypeChoosingNewAccountDonaterAccountCaption =
      "Öğrencilere bilgisayar temin edilmesi için destek olmak isteyen kişiler bağışçı hesabı oluşturarak bağış yapabilirler.";

  //acoount_type_choosing_login_view.dart
  final String accountTypeChoosingLoginChoosingMainText =
      'Lütfen Hesap Giriş Türünü Seçiniz';
  final String accountTypeChoosingLoginApplicantAccountText =
      'Başvuru Hesabı (Aktif OBS)';
  final String accountTypeChoosingLoginDonatertAccountText = 'Bağışçı Hesabı';
  final String accountTypeChoosingLoginApplicantAccountCaption =
      "Aktif üniversite kaydı olan ve bilgisayar almak için maddi durumu olmayan öğrencilerimiz başvuru hesabı oluşturarak başvuruda bulunabilirler.";
  final String accountTypeChoosingLogintDonaterAccountCaption =
      "Öğrencilere bilgisayar temin edilmesi için destek olmak isteyen kişiler bağışçı hesabı oluşturarak bağış yapabilirler.";

  //about_us_view.dart
  final String aboutUsViewWhoWeAreTitle = "Biz Kimiz?";
  final String aboutUsViewWhoWeAreText =
      "\"Bilgisayarsızları Bilgisayarlandırma Projesi\", Kütahya Dumlupınar Üniversitesi'nde eğitim gören ve maddi anlamda desteğe ihtiyaç duyan öğrencilere ücretsiz bilgisayar temin eden bir bağış uygulamasıdır. Bu projenin amacı, teknolojiye erişimde zorluk çeken öğrencilere destek olmak, onların eğitim hayatlarında eşit fırsatlar yakalamasını sağlamak ve dijital çağın gereksinimlerine uygun bir şekilde gelişimlerini teşvik etmektir. Bu uygulama, Bilgisayarsızları Bilgisayarlandırma Vakfı tarafından yürütülen bir projedir. Vakfımız, bilgisayarsız öğrenci kalmaması için özveriyle çalışan bir topluluktur.";

  //contact_us_view.dart
  final String contactUsviewMainText = "Bizimle İletişime Geçin";
  final String contactUsViewMailListTileTitle = "E-Posta Adresi";
  final String contactUsViewMailListTileSubtitle = "bbpvakfi@gmail.com";
  final String contactUsViewPhoneNumberListTileTitle = "Telefon Numarası";
  final String contactUsViewPhoneNumberListTileSubtitle = "+123 456 789";

  //sign_up_applicant_view.dart
  final String signUpApplicantViewMainText = "Aktif OBS Kaydı İle Başvuru Yap";
  //diğer değişkenler login_applicant_view.dart ile aynı

  //login_applicant_view.dart
  final String loginApplicantViewMainText = "Aktif OBS Hesabına Giriş Yap";
  final String textFieldLabelTextForUniversityObsStudentNumber =
      "OBS Numarası (Üniversite Öğrenci Numarası)";
  final String textFieldLabelTextForObsPassword = "OBS Şifresi";

  //applicant_main_page_view.dart
  final String applicantMainPageMainText = "Ne Yapmak İstersiniz?";
  final String applicantMainPageMakeApplicationTitle = "Başvuru Yapmak";
  final String applicantMainPageMakeApplicationCaption =
      "Üniveristemizin öğrencisi olarak bilgisayar bursuna başvurmak istiyorum.";
  final String applicantMainPageShowApplicationStateTitle =
      "Başvuru Durumu Görmek";
  final String applicantMainPageShowApplicationStateCaption =
      "Yapmış olduğum başvurunun anlık durumunu incelemek istiyorum.";

  //sign_up_donater_username_view.dart
  final String signUpDonaterUsernameViewTextFieldLabelText =
      "Lütfen Kullanıcı Adı Giriniz";
  final String textForSignUpDonaterUsernameViewNextButton = "Sonraki";

  //sign_up_donater_password_view.dart
  final String signUpDonaterPasswordViewTextFieldLabelPasswordText = "Şifre";
  final String signUpDonaterPasswordViewTextFieldLabelPasswordAgainText =
      "Şifre Tekrar";
  final String passwordMismatchError = "Şifreler eşleşmiyor!";

  //login_donater_view.dart
  final String loginDonaterViewMainText = "Bağışçı Hesabına Giriş Yap";
  final String textFieldLabelTextForUsername = "Kullanıcı Adı"; //eskiden maildi
  final String textFieldLabelTextForPassword = "Şifre";
  final String textForForgottenPasswordButton = "Şifremi Unuttum";

  //donater_main_page.dart
  final String donaterMainPageMainText = "Ne Yapmak İstersiniz?";
  final String donaterMainPageMakeDonationTtile = "Bağış Yapmak";
  final String donaterMainPageMakeDonationCaption =
      "Üniversite öğrencilerine bilgisayar temin edilmesine yönelik maddi katkıda bulunmak istiyorum.";
  final String donaterMainPageShowDonaterInfoTitle = "Bilgilerimi Görmek";
  final String donaterMainPageShowDonaterInfoCaption =
      "Bağışçı profilimdeki bilgilerimi incelemek istiyorum.";
}
