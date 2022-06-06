import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('Tap untuk ke halaman about')),
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/halaman-error');
                },
                child: Text('Tap untuk lanjut')),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about'),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali')),
      ),
    );
  }
}
