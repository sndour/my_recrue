import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AssetDiagnostic extends StatefulWidget {
  @override
  _AssetDiagnosticState createState() => _AssetDiagnosticState();
}

class _AssetDiagnosticState extends State<AssetDiagnostic> {
  List<String> results = [];

  @override
  void initState() {
    super.initState();
    _checkAssets();
  }

  Future<void> _checkAssets() async {
    // Liste de tous vos assets à tester
    final assetsToTest = [
      'assets/images/logo.png',
      'assets/images/arrow_contact_list.svg',
      'assets/fonts/satoshi/Satoshi-Regular.ttf',
      // Ajoutez ici TOUS vos assets
    ];

    List<String> newResults = [];

    for (String asset in assetsToTest) {
      try {
        await rootBundle.load(asset);
        newResults.add('✅ OK: $asset');
      } catch (e) {
        newResults.add('❌ ERREUR: $asset');
        newResults.add('   → ${e.toString()}');
      }
    }

    // Test des polices système
    final fontsToTest = ['Roboto', 'OpenSans', 'CustomFont'];
    for (String font in fontsToTest) {
      newResults.add('🔤 Police testée: $font');
    }

    setState(() {
      results = newResults;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagnostic Assets'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Résultats du diagnostic:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: results.length,
                itemBuilder: (context, index) {
                  final result = results[index];
                  final isError = result.contains('❌');

                  return Container(
                    margin: EdgeInsets.only(bottom: 8),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: isError ? Colors.red[50] : Colors.green[50],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isError ? Colors.red : Colors.green,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      result,
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 12,
                        color: isError ? Colors.red[800] : Colors.green[800],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkAssets,
              child: Text('Relancer le test'),
            ),
          ],
        ),
      ),
    );
  }
}

