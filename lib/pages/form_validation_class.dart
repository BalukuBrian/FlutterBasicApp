import "package:flutter/material.dart";
import 'package:form_field_validator/form_field_validator.dart';

class FormValidationClass extends StatefulWidget {
  const FormValidationClass({Key? key}) : super(key: key);
  @override
  State<FormValidationClass> createState() => _FormValidationClassState();
}

class _FormValidationClassState extends State<FormValidationClass> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  final _countController = TextEditingController();
  final _itemController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  // final _passwordRetypeController = TextEditingController();

  bool obscure = true;

// Order to Save
  // final Order order = Order(); //removed the underscore

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Form(
                      key: _formStateKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: _itemController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                hintText: 'African Tea',
                                labelText: 'Item',
                              ),
                              //validator: (value) => _validateItemRequired(value),
                              // onSaved: (value) => order.item = value,
                              validator: RequiredValidator(
                                  errorText: "At least one Item Required"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _countController,
                              cursorColor: Colors.pink,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: '3',
                                labelText: 'Quantity',
                              ),

                              //validator: (value) => _validateItemCount(value),
                              // onSaved: (value) =>
                              //     order.quantity = int.tryParse(value),

                              validator: RequiredValidator(
                                  errorText: "Quantity Required"),
                            ),
                            // const Divider(
                            //   height: 32.0,
                            // ),
                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                hintText: 'abc@gmail.com',
                                labelText: 'Email',
                              ),
                              validator: MultiValidator([
                                RequiredValidator(errorText: "Email Required"),
                                EmailValidator(
                                    errorText:
                                        "Please enter a valid email address"),
                              ]),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: obscure,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.pink),
                                // suffixIcon: IconButton(
                                //   icon: Icon(
                                //     Icons.visibility,
                                //     color: Colors.pink,
                                //   ),
                                //   onPressed: () {
                                //     setState(
                                //       () {
                                //         obscure = !obscure;
                                //       },
                                //     );
                                //   },
                                // ),
                              ),
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: "Password Required"),
                                MinLengthValidator(6,
                                    errorText:
                                        "Password must contain atleast 6 characters"),
                                MaxLengthValidator(15,
                                    errorText:
                                        "Password cannot be more 15 characters"),
                                PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                                    errorText:
                                        "Password must have atleast one special character"),
                              ]),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.pink),
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 60.0,
                                  ),
                                  child: Text("Submit"),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 100.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
