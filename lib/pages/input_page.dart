import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;
  String name = "";
  TextEditingController _dateTimeController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  String valueAux = "Superman";
  List<String> superheroes = [
    "Superman",
    "Wonder Woman",
    "Batman",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "InputPage",
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                maxLines: 1,
                textAlign: TextAlign.center,
                maxLength: 10,
                cursorColor: Colors.yellowAccent,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  label: Text("Correo Electronico"),
                  hintText: "Ingresa tu correo electronico",
                  hintStyle: TextStyle(
                    color: Colors.blue.withOpacity(0.35),
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                  icon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.alternate_email),
                  suffixIcon: Icon(Icons.email_outlined),
                ),
                onChanged: (String value) {
                  print(value);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Buscar Producto",
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 4,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 4,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 4,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.search,
                  ),
                  suffixIcon: const Icon(
                    Icons.mail,
                  ),
                  prefixIcon: Icon(
                    Icons.check_circle_outline,
                  ),
                  label: Text("Buscar"),
                  hintText: "Ingresa el producto a buscar",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.yellowAccent,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 12,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Buscar producto",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                    suffixIcon: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pink.withOpacity(0.5),
                            offset: const Offset(4, 4),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: isInvisible,
                decoration: InputDecoration(
                  hintText: "Ingrese su contraseña",
                  suffixIcon: IconButton(
                    icon: isInvisible
                        ? Icon(Icons.remove_red_eye)
                        : Icon(
                            Icons.remove_red_eye_outlined,
                          ),
                    onPressed: () {
                      isInvisible = !isInvisible;
                      setState(() {});
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  label: Text(
                    "Ingresa tu nombre:",
                  ),
                ),
                /*onChanged: (String value) {
                  name = value;
                },
                onTap: () {
                  print("ON TAP!!");
                },*/
              ),
              ElevatedButton(
                onPressed: () {
                  getNameData();
                  setState(() {});
                },
                child: Text("Mostrar valor"),
              ),
              TextField(
                controller: _nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  label: Text(
                    "Ingresa tu nombre:",
                  ),
                ),
                /*onChanged: (String value) {
                  name = value;
                },
                onTap: () {
                  print("ON TAP!!");
                },*/
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _dateTimeController,
                toolbarOptions: ToolbarOptions(
                  copy: false,
                  cut: false,
                  paste: false,
                  selectAll: false,
                ),
                readOnly: true,
                decoration: InputDecoration(
                  hintText: "Fecha de nacimiento",
                  suffixIcon: Icon(Icons.date_range),
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  selectDate();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButton(
                value: valueAux,
                items: superheroes
                    .map(
                      (e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ),
                    )
                    .toList(),
                onChanged: (String? value) {
                  valueAux = value!;
                  setState(() {
                    });
                },
              ),
              const SizedBox(
                height: 120,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getNameData() {
    print(_nameController.text);
  }

  selectDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (dateSelected != null) {
      _dateTimeController.text = dateSelected.toString().substring(0, 10);
    }
  }
}
