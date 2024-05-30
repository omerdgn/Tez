import 'package:bbp_project/local_database.dart';
import 'package:flutter/material.dart';
// local_database dosyanızın doğru yolunu belirleyin

class ApplicantInfoView extends StatefulWidget {
  final int applicantId;

  ApplicantInfoView({required this.applicantId});

  @override
  _ApplicantInfoViewState createState() => _ApplicantInfoViewState();
}

class _ApplicantInfoViewState extends State<ApplicantInfoView> {
  late LocalDatabase _localDatabase;
  Map<String, dynamic>? _applicantData;

  @override
  void initState() {
    super.initState();
    _localDatabase = LocalDatabase();
    _fetchApplicantData();
  }

  Future<void> _fetchApplicantData() async {
    final data = await _localDatabase.getApplicantById(widget.applicantId);
    setState(() {
      _applicantData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Başvuru Sahibi Bilgileri'),
      ),
      body: _applicantData == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'İsim: ${_applicantData!['name']}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Soyisim: ${_applicantData!['surname']}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Telefon Numarası: ${_applicantData!['phoneNum']}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'E-posta: ${_applicantData!['eMail']}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Adres: ${_applicantData!['address']}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Aktif Obser: ${_applicantData!['isActiveObs'] == 1 ? 'Evet' : 'Hayır'}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Örgün Öğretim Durumu: ${_applicantData!['isApplicationResultPositive'] == 1 ? 'Pozitif' : 'Negatif veya Belirsiz'}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Başvuru Tarihi: ${_applicantData!['applicationDate']}',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
    );
  }
}
