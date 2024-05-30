// donater_info_view.dart
import 'package:bbp_project/local_database.dart';
import 'package:flutter/material.dart';
// local_database dosyanızın doğru yolunu belirleyin

class DonaterInfoView extends StatefulWidget {
  final int donationId;

  DonaterInfoView({required this.donationId});

  @override
  _DonaterInfoViewState createState() => _DonaterInfoViewState();
}

class _DonaterInfoViewState extends State<DonaterInfoView> {
  late LocalDatabase _localDatabase;
  Map<String, dynamic>? _donationData;

  @override
  void initState() {
    super.initState();
    _localDatabase = LocalDatabase();
    _fetchDonationData();
  }

  Future<void> _fetchDonationData() async {
    final data = await _localDatabase.getDonationById(widget.donationId);
    setState(() {
      _donationData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bağış Bilgileri'),
      ),
      body: _donationData == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bağışçı Aktiflik Onayı: ${_donationData!['donaterId']}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bağış Miktarı: ${_donationData!['donationAmount']}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bağış Tarihi: ${_donationData!['donationDate']}',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
    );
  }
}
