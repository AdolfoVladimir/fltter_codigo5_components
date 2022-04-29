import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_codigo5_componets/pages/alert_page.dart';
import 'package:flutter_codigo5_componets/pages/avatar_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    image: DecorationImage(
                      // image: NetworkImage("https://ih1.redbubble.net/image.622748019.0162/pp,504x498-pad,600x600,f8f8f8.u1.jpg",),
                      image: NetworkImage(
                        "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg",
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        offset: Offset(4, 4),
                        blurRadius: 12.0,
                      ),
                    ]),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.montserrat(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 160,
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              ItemComponentWidget(
                title: "Avatar",
                subTitle: "El mejor",
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Jose",
                subTitle: "El malo",
                toPage: AlertPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  String subTitle;
  Widget toPage;

  ItemComponentWidget({
    required this.subTitle,
    required this.title,
    required this.toPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(4, 4),
            blurRadius: 16,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: Icon(Icons.check_circle_outline),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
