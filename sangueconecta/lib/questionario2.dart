import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'questionario3.dart';

class Questionario2Screen extends StatefulWidget {
  @override
  _Questionario2ScreenState createState() => _Questionario2ScreenState();
}

class _Questionario2ScreenState extends State<Questionario2Screen> {
  String selectedBloodType = 'A+';
  String selectedSexo = 'M'; // Default gender
  final List<String> bloodTypeOptions = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  final List<String> sexoOptions = ['M', 'F'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário de Elegibilidade'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Idade',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Digite sua idade',
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Peso',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Digite seu peso',
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Tipo Sanguíneo',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: selectedBloodType,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedBloodType = newValue!;
                    });
                  },
                  items: bloodTypeOptions.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Data da Última Doação',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(8),
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*')),
                    _DateInputFormatter(),
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'DD/MM/YY',
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Sexo',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: selectedSexo,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedSexo = newValue!;
                    });
                  },
                  items: sexoOptions.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            Positioned(
              bottom: 6.0,
              child: Container(
                width: 360.0,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to Questionario3Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Questionario3Screen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    'Verificar',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = _formatDate(newValue.text);
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }

  String _formatDate(String text) {
    text = text.replaceAll(RegExp(r'[^0-9]'), '');
    if (text.length > 4) {
      text = text.substring(0, 2) + '/' + text.substring(2, 4) + '/' + text.substring(4);
    }
    return text;
  }
}
