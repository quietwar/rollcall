 
import 'package:Roll_Call/register/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 
import '../user_repository.dart';
import 'bloc/register_bloc.dart';

class RegisterScreen extends StatelessWidget {
  final UserRepository _userRepository;
  static const PrimaryColor = const Color(0xffffdf00);

  RegisterScreen({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register',
      style: TextStyle(color:PrimaryColor)),
      backgroundColor: Colors.green),
      body: Center(
        child: BlocProvider<RegisterBloc>(
          builder: (context) => RegisterBloc(userRepository: _userRepository),
          child: RegisterForm(),
        ),
      ),
    );
  }
}
