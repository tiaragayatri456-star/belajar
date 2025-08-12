import 'package:belajar/home.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState(); 
}

 class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isPasswordVisible = false;

   Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 8,
          child: Container(
            padding: const EdgeInsets.all(32.0),
            constraints: const BoxConstraints(
              maxWidth: 350,
            ),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FlutterLogo(size: 100),
                    _gap(),
                    Text("Selamat Datang di Aplikasi Flutter!",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        hintText: 'Masukan Username',
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                        border:  OutlineInputBorder(),
                      ),
                      validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username tidak boleh kosong';
                      }
                      return null;
                      },
                    ),
                    _gap(),
                    TextFormField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Masukan Password',
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                          _isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Kata sandi tidak boleh kosong';
                      }
                      if (value.length < 6) {
                          return 'Kata sandi minimal 6 karakter';
                      }
                      return null;
                    },
                    ),
                    _gap(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(4,
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => const HomePage(),
                            ),
                            );
                          }
                        },
                        child: const Padding(padding: 
                        EdgeInsetsGeometry.all(10.0),
                        child: Text(
                          'Masuk',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
 }
  Widget _gap() => const SizedBox(height: 16,);

 }
