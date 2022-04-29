import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {




  void showMiAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext federico) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            title: Text("Caregive Review",
            style: TextStyle(
              color: Colors.blue,

            ),),
            backgroundColor: Colors.white,
            elevation: 8,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Check_green_icon.svg/2048px-Check_green_icon.svg.png",
                ),
                SizedBox(height: 10),
                Text("Alert of segurity"),
                SizedBox(height: 10),
                Text(
                    "brain s. Hacer sudokus es una actividad estimulante para el cerebro."),
              ],
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Aceptar"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showMiAlert(context);
                },
                child: Text("show Alert")),
          ],
        ),
      ),
    );
  }
}
