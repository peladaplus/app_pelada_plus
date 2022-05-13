import 'package:app_pelada_plus/app/features/group/domain/entities/group.entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late Frequency _frequency = Frequency.monthly;
  late GameType _gameType = GameType.soccer;

  late bool mondayCheck = false;
  late bool tuesdayCheck = false;
  late bool wednesdayCheck = false;
  late bool thursdayCheck = false;
  late bool fridayCheck = false;
  late bool saturdayCheck = false;
  late bool sundayCheck = false;

  final TextEditingController _controllerGroup = TextEditingController();
  final TextEditingController _controllerImage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.grey[50],
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Olá,',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
                'SEJA BEM-VINDO!',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 10),
                Text(
                  'Preencha aqui os dados do seu grupo de futebol. '
                  'Dê um nome ao seu grupo, informe qual é a frequência dos '
                  'seus jogos. Precisamos saber também qual é a modalidade '
                  'das suas peladas para que possamos personalizar a '
                  'sua experiência. Por último, mas não menos importante, '
                  'queremos saber se os jogadores do seu grupo poderão '
                  'se auto avaliar.',
                  style: TextStyle(
                      fontFamily: GoogleFonts.notoSansModi().fontFamily,
                      fontSize: 16),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  controller: _controllerGroup,
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  cursorColor: Colors.deepOrange,
                  decoration: const InputDecoration(
                    hintText: 'Grupo',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.deepOrange,
                    )),
                  ),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  controller: _controllerImage,
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  cursorColor: Colors.deepOrange,
                  decoration: const InputDecoration(
                    hintText: 'Imagem',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.deepOrange,
                    )),
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Frequência',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Mensal',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  leading: Radio<Frequency>(
                    value: Frequency.monthly,
                    groupValue: _frequency,
                    onChanged: (Frequency? value) {
                      setState(() {
                        _frequency = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Semanal',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  leading: Radio<Frequency>(
                    value: Frequency.weekly,
                    groupValue: _frequency,
                    onChanged: (Frequency? value) {
                      setState(() {
                        _frequency = value!;
                      });
                    },
                  ),
                ),
                CheckboxListTile(
                  title: const Text('Segunda-feira'),
                  onChanged: (bool? value) {
                    setState(() {
                      mondayCheck = value!;
                    });
                  },
                  value: mondayCheck,
                ),
                CheckboxListTile(
                  title: const Text('Terça-feira'),
                  onChanged: (bool? value) {
                    setState(() {
                      tuesdayCheck = value!;
                    });
                  },
                  value: tuesdayCheck,
                ),
                CheckboxListTile(
                  title: const Text('Quarta-feira'),
                  onChanged: (bool? value) {
                    setState(() {
                      wednesdayCheck = value!;
                    });
                  },
                  value: wednesdayCheck,
                ),
                CheckboxListTile(
                  title: const Text('Quinta-feira'),
                  onChanged: (bool? value) {
                    setState(() {
                      thursdayCheck = value!;
                    });
                  },
                  value: thursdayCheck,
                ),
                CheckboxListTile(
                  title: const Text('Sexta-feira'),
                  onChanged: (bool? value) {
                    setState(() {
                      fridayCheck = value!;
                    });
                  },
                  value: fridayCheck,
                ),
                CheckboxListTile(
                  title: const Text('Sábado'),
                  onChanged: (bool? value) {
                    setState(() {
                      saturdayCheck = value!;
                    });
                  },
                  value: saturdayCheck,
                ),
                CheckboxListTile(
                  title: const Text('Domingo'),
                  onChanged: (bool? value) {
                    setState(() {
                      sundayCheck = value!;
                    });
                  },
                  value: sundayCheck,
                ),
                const SizedBox(height: 25),
                const Text(
                  'Modalidade',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum Frequency { monthly, weekly }
