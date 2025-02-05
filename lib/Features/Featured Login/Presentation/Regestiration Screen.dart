import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../Core/Styles.dart';
import '../../../Core/Widgets/Custom Button.dart';
import '../../../Core/constants.dart';
import 'Welcome Screen.dart';


class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Country _selectedCountry = CountryPickerUtils.getCountryByPhoneCode('230');
  TextEditingController _phoneNumberController = TextEditingController();

  void _openCountryPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.pink),
        child: CountryPickerDialog(
          titlePadding: const EdgeInsets.all(8.0),
          searchCursorColor: Colors.pinkAccent,
          searchInputDecoration: const InputDecoration(hintText: 'Search...'),
          isSearchable: true,
          title: const Text('Select your phone code'),
          onValuePicked: (Country country) {
            setState(() {
              _selectedCountry = country;
              _updatePhoneNumberWithCountryCode();
            });
          },
          itemBuilder: _buildDialogItem,
        ),
      ),
    );
  }

  void _updatePhoneNumberWithCountryCode() {
    String currentText = _phoneNumberController.text;
    if (!currentText.startsWith('+${_selectedCountry.phoneCode}')) {
      _phoneNumberController.text = '+${_selectedCountry.phoneCode} $currentText';
    }
  }

  Widget _buildDialogItem(Country country) {
    return Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        const SizedBox(width: 8.0),
        Text("+${country.phoneCode}"),
        const SizedBox(width: 8.0),
        Flexible(child: Text(country.name)),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(KBackGImage,fit: BoxFit.fill,)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const WelcomeScreen()));

                  },
                      icon: const Icon(Icons.arrow_back_ios_new)),
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text('Registration',
                  textAlign: TextAlign.left,
                  style:Style.textStyle38,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Enter your phone number to verify your account',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Sofia',
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                    height: 30),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _phoneNumberController,

                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SizedBox(
                              height: 50,
                              width: 80,
                              child: GestureDetector(
                                onTap: () => _openCountryPicker(context),
                                child: Row(
                                  children: [
                                    CountryPickerUtils.getDefaultFlagImage(_selectedCountry),
                                    const SizedBox(
                                        width: 8),
                                    const Icon(Icons.arrow_drop_down_sharp,color: Colors.grey,)

                                  ],
                                ),
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),

                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(color: Colors.orange)
                          ),                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Center(child: Custombutton(title: 'SEND')),
              ],
            ),
          ),

        ],
      ),
    );
  }
}