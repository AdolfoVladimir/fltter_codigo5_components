import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Card Page",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //card1
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  ),
                  BoxShadow(
                    color: Colors.blue,
                    blurRadius: 5,
                    offset: Offset(-5, -5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                      fontSize: 20,
                      height: 1.5,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.5),
                          blurRadius: 2,
                          offset: Offset(6, 6),
                        ),
                      ],
                    ),
                    child: Text("Folow me"),
                  ),
                ],
              ),
            ),
            //card 2
            Container(
              //color: Colors.red,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 1,
                    offset: Offset(5, 5),
                  ),
                ],
              ),

              child: Row(
                children: [
                  Image.asset(
                    "assets/image/ima1.png",
                    height: 100,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          " Fiorela guadalupe de las nieves",
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorena es una madre tarabajadora y empredndeora jefkaksr  sdjnfgkjnsLorena es una madre tarabajadora y empredndeora jefkaksr  sdjnfgkjnsLorena es una madre tarabajadora y empredndeora jefkaksr  sdjnfgkjns",
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //card3
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 22,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(5, 5),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://images.pexels.com/photos/11780519/pexels-photo-11780519.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                      width: 130,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      "Traducción del inglés-Dropbox Paper, o simplemente Paper, es un servicio colaborativo de edición de documentos desarrollado por Dropbox. Con origen en la adquisición de la empresa de colaboración de documentos Hackpad en abril de 2014, Dropbox Paper se anunció oficialmente en octubre de 2015 y se lanzó en enero de 2017. Wikipedia (Inglés)",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            //card4
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(4, 4),
                    blurRadius: 3,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/718978/pexels-photo-718978.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff36437C),
                            ),
                          ),
                          Text(
                            "Ceo at Apple Inc",
                            style: TextStyle(
                              color: Color(0xff36437C),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffDCE5FF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 10),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.settings,
                              size: 20,
                              color: Color(0xff5B87FF),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Setting",
                              style: TextStyle(
                                color: Color(0xff5B87FF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //card5
            Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: 30,
              ),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 1,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Color(0xffB8CBFF),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.approval,
                      size: 30,
                      color: Color(0xff1D59FF),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The quick, brown fox jumps over",
                          style: TextStyle(
                            color: Color(0xff576392),
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consetetur sadipsciping elitr, sed diam nonumy eirmod tempor",
                          style: TextStyle(
                              color: Color(0xff566291),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //Card 6
            Container(
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 3,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 30,
                      top: 25,
                      bottom: 10,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Loren ipsum dolor sit amet, consetetur",
                            style: TextStyle(
                              color: Color(0xff5A6594),
                              fontWeight: FontWeight.w700,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        Text(
                          "On",
                          style: TextStyle(
                            color: Color(0xff638BFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff0044FF),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          height: 16,
                          width: 32,
                          padding: EdgeInsets.only(
                              bottom: 3, top: 3, right: 3, left: 19),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 30,
                      top: 10,
                      bottom: 15,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Loren ipsum dolor sit amet, consetetur",
                            style: TextStyle(
                              color: Color(0xff5A6594),
                              fontWeight: FontWeight.w700,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        Text(
                          "Off",
                          style: TextStyle(
                            color: Color(0xff878FB1),
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffD3D6E2),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          height: 16,
                          width: 32,
                          padding: EdgeInsets.only(
                              bottom: 3, top: 3, right: 19, left: 3),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Espacio final
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
