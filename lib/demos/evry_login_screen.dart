import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/color/colors.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class EvryLoginScreen extends StatefulWidget {
  const EvryLoginScreen({super.key});

  @override
  State<EvryLoginScreen> createState() => _EvryLoginScreenState();
}

class _EvryLoginScreenState extends State<EvryLoginScreen> {
  bool _isObscured = true;
  bool _isRemembered = false; // Beni Hatırla kutucuğu için değişken

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(237, 228, 230, 233),
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: _evryImage(),
              ),
            ),
            EvrySizedBox().sizedBox20,
            _numberField(),
            EvrySizedBox().sizedBox50,
            _passwordField(),
            EvrySizedBox().sizedBox50,
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text(
                LanguageItems.oturumText,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            EvrySizedBox().sizedBox20,
            Row(
              children: [
                Checkbox(
                  value: _isRemembered,
                  onChanged: (bool? value) {
                    setState(() {
                      _isRemembered = value ?? false;
                    });
                  },
                ),
                const Text(LanguageItems.hatirlaText),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(LanguageItems.unutText, style: TextStyle(color: AppColors.purple)),
                ),
              ],
            ),
            EvrySizedBox().sizedBox20,
            Text(
              LanguageItems.hesapText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.purple),
            ),
            EvrySizedBox().sizedBox20,
            _uyeTextButton(),
            EvrySizedBox().sizedBox20,
            _misafirTextButton(),
          ],
        ),
      ),
    );
  }

  Image _evryImage() => Image.asset('assets/evrylogo.png', height: 175);

  TextButton _misafirTextButton() {
    return TextButton(
      onPressed: () {},
      child: Text(LanguageItems.misafirText, style: TextStyle(color: AppColors.purple)),
    );
  }

  TextButton _uyeTextButton() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: AppColors.purple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
      ),
      child: const Text(LanguageItems.uyeText, style: TextStyle(color: Colors.white, fontSize: 16)),
    );
  }

  TextField _passwordField() {
    return TextField(
      textInputAction: TextInputAction.go,
      maxLength: 10,
      obscureText: _isObscured,
      buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
        return null;
      },
      decoration: InputDecoration(
        labelText: LanguageItems.sifreText,
        suffixIcon: IconButton(
          icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility, color: AppColors.grey),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
        ),
        fillColor: Colors.white,
        hintStyle: TextStyle(color: AppColors.purple),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 240, 210, 210), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    );
  }

  TextField _numberField() {
    return TextField(
      textInputAction: TextInputAction.go,
      maxLength: 10,
      buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
        return null;
      },
      autofillHints: const [AutofillHints.telephoneNumber],
      keyboardType: TextInputType.phone,
      style: TextStyle(color: AppColors.purple),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.phone),
        prefixStyle: TextStyle(color: AppColors.grey),
        fillColor: AppColors.white,
        labelText: LanguageItems.telNoText,
        hintText: LanguageItems.hintNo,
        hintStyle: TextStyle(color: AppColors.purple),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 240, 210, 210), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
    );
  }
}

class EvrySizedBox {
  final sizedBox50 = const SizedBox(height: 50);
  final sizedBox20 = const SizedBox(height: 20);
}
