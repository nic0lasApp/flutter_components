import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";

  // ignore: prefer_final_fields
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearfecha(context),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        _nombre = valor;
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Email',
        helperText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valor) => setState(() {
        _email = valor;
      }),
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Password',
        helperText: 'password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (valor) => setState(() {
        _email = valor;
      }),
    );
  }

  Widget _crearfecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Fecha nacimiento',
        helperText: 'Fecha nacimiento',
        suffixIcon: const Icon(Icons.perm_contact_calendar),
        icon: const Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
      locale: Locale('es', 'ES'),
      helpText: "SELECT BOOKING DATE",
      cancelText: "Cancelar",
      confirmText: "Aceptar",
    );

    if (picked != null) {
      setState(() {
        _controller.text = picked.toString();
      });
    }
  }
}
