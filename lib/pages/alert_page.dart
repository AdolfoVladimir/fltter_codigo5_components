import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {

  void showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Caregiver Review",
                style: GoogleFonts.poppins(
                  color: Color(0xff658BC9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Color(0xff789BD6),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Icon(
                  Icons.person,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Amanda Johnson",
                style: GoogleFonts.poppins(
                    color: Color(0xff53658C),
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
              Text(
                "Rate the care provider Sunday, Jan 9",
                style: GoogleFonts.poppins(
                    color: Color(0xff53658C),
                    fontWeight: FontWeight.w500,
                    fontSize: 10.0),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffDFE4ED),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                height: 60.0,
                width: double.infinity,
                color: Color(0xffF7F9FC),
                child: Text(
                  "Additional Comments...",
                  style: GoogleFonts.poppins(
                    color: Color(0xff949FB9),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Not Now",
                      style: GoogleFonts.poppins(
                        color: Color(0xff5F7CAF),
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  MaterialButton(
                    color: Color(0xff6F8FC5),
                    child: Text(
                      "Submit Review",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }




  void showMiAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
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
                  showMyAlert2(context);
                },
                child: Text("show Alert")),
          ],
        ),
      ),
    );
  }
}
