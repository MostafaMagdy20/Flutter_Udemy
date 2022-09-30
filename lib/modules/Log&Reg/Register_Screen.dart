import 'package:flutter/material.dart';
import 'package:flutter_course/shared/components/components.dart';

class Register extends StatefulWidget
{
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  var firstNamecon = TextEditingController();
  var secondNamecon = TextEditingController();
  var phoneNOcon = TextEditingController();
  var emailcon = TextEditingController();
  var passcon  = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 10.0,
        shadowColor: Colors.amberAccent[200],
        title: Text(
          'Welcome',
          style: TextStyle(
              color: Colors.amberAccent[200]
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            bottom: 40.0,
            left: 40.0,
            right: 40.0
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 40.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  defaultTFF(
                      controller: firstNamecon,
                      borderRadius: 25.0,
                      type: TextInputType.text,
                      label: 'First Name',
                      prefix: Icons.drive_file_rename_outline,
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return('First Name must be found');
                        }
                      }
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultTFF(
                      controller: secondNamecon,
                      borderRadius: 25.0,
                      type: TextInputType.text,
                      label: 'Second Name',
                      prefix: Icons.drive_file_rename_outline,
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return('Second Name must be found');
                        }
                      }
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultTFF(
                      controller: phoneNOcon,
                      borderRadius: 25.0,
                      type: TextInputType.phone,
                      label: 'Phone Number',
                      prefix: Icons.phone_android,
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return('Phone Number must be found');
                        }
                      }
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultTFF(
                      controller: emailcon,
                      borderRadius: 25.0,
                      onchange: (value)
                      {
                        print(value);
                      },
                      type: TextInputType.emailAddress,
                      label: 'Email',
                      prefix: Icons.email,
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return('Email must be found');
                        }
                      }
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultTFF(
                      controller: passcon,
                      borderRadius: 25.0,
                      onchange: (value)
                      {
                        print(value);
                      },
                      type: TextInputType.phone,
                      label: 'Password',
                      prefix: Icons.lock,
                      obscure: isPassword,
                      suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                      suffixOnpressd: ()
                      {
                        setState(()
                        {
                          isPassword = !isPassword;
                        });
                      },
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return('password must be found');
                        }
                      }
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    function: ()
                    {
                      if (formkey.currentState!.validate())
                      {
                        print(emailcon);
                        print(passcon);
                      }
                    },
                    text: 'SignUp',
                    radius: 20.0,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}