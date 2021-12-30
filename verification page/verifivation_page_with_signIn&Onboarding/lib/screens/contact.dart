import 'package:anim/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:anim/components/page_info.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/services.dart';
import 'package:anim/components/yellow_button.dart';

class Contacts extends StatefulWidget {
  static const String screenID = 'contact_screen';
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final TextEditingController _controller = TextEditingController();
  Country? _selectedCountry;
  String contactNumber = "";
  @override
  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    final country = _selectedCountry;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const UpperHalfWidget("Hanoi, Vietnam", "Enter Your No for OTP",
                  "Enter your Phone number to recover your password"),
              Container(
                width: double.infinity,
                height: 80,
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (country == null)
                      const CircleAvatar(
                        radius: 16.0,
                        backgroundImage: NetworkImage(
                            'https://cdn.britannica.com/97/1597-004-05816F4E/Flag-India.jpg'),
                      )
                    else
                      CircleAvatar(
                        radius: 16.0,
                        backgroundImage: AssetImage(
                          country.flag,
                          package: countryCodePackageName,
                        ),
                      ),
                    GestureDetector(
                      child: const Icon(Icons.arrow_drop_down),
                      onTap: _onPressedShowBottomSheet,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        country == null ? "+91" : country.callingCode,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          contactNumber = value;
                        },
                        maxLength: 10,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        controller: _controller,
                        decoration: const InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(fontSize: 18),
                        autofocus: true,
                        showCursor: true,
                        readOnly: true,
                      ),
                    ),
                    Icon(
                      Icons.check,
                      size: 25,
                      color: contactNumber.length == 10.0
                          ? Colors.green
                          : Colors.grey,
                    )
                  ],
                ),
              ),
              YellowButton(
                buttonText: 'CONTINUE',
                iconData: Icons.arrow_right_alt_sharp,
                onclick: () {
                  Navigator.pushNamed(context, OTPscreen.screenID);
                },
              ),
              CustomKeyboard(
                onTextInput: (myText) {
                  _insertText(myText);
                },
                onBackspace: () {
                  _backspace();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _insertText(String myText) {
    final text = _controller.text;
    final textSelection = _controller.selection;
    final selectionLength = textSelection.end - textSelection.start;
    if (selectionLength < 10) {
      final newText = text.replaceRange(
        textSelection.start,
        textSelection.end,
        myText,
      );
      final myTextLength = myText.length;
      _controller.text = newText;
      _controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start + myTextLength,
        extentOffset: textSelection.start + myTextLength,
      );
    }
  }

  void _backspace() {
    final text = _controller.text;
    final textSelection = _controller.selection;
    final selectionLength = textSelection.end - textSelection.start;

    // There is a selection.
    if (selectionLength > 0) {
      final newText = text.replaceRange(
        textSelection.start,
        textSelection.end,
        '',
      );
      _controller.text = newText;
      _controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start,
        extentOffset: textSelection.start,
      );
      return;
    }

    // The cursor is at the beginning.
    if (textSelection.start == 0) {
      return;
    }

    // Delete the previous character
    final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
    final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
    final newStart = textSelection.start - offset;
    final newEnd = textSelection.start;
    final newText = text.replaceRange(
      newStart,
      newEnd,
      '',
    );
    _controller.text = newText;
    _controller.selection = textSelection.copyWith(
      baseOffset: newStart,
      extentOffset: newStart,
    );
  }

  bool _isUtf16Surrogate(int value) {
    return value & 0xF800 == 0xD800;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPressedShowBottomSheet() async {
    final country = await showCountryPickerSheet(
      context,
    );
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }
}

class CustomKeyboard extends StatelessWidget {
  CustomKeyboard({
    Key? key,
    required this.onTextInput,
    required this.onBackspace,
  }) : super(key: key);

  final ValueSetter<String> onTextInput;
  final VoidCallback onBackspace;

  void _textInputHandler(String text) => onTextInput.call(text);

  void _backspaceHandler() => onBackspace.call();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                TextKey(
                  text: '1',
                  onTextInput: _textInputHandler,
                ),
                TextKey(
                  text: '2',
                  onTextInput: _textInputHandler,
                ),
                TextKey(
                  text: '3',
                  onTextInput: _textInputHandler,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                TextKey(
                  text: '4',
                  onTextInput: _textInputHandler,
                ),
                TextKey(
                  text: '5',
                  onTextInput: _textInputHandler,
                ),
                TextKey(
                  text: '6',
                  onTextInput: _textInputHandler,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                TextKey(
                  text: '7',
                  onTextInput: _textInputHandler,
                ),
                TextKey(
                  text: '8',
                  onTextInput: _textInputHandler,
                ),
                TextKey(
                  text: '9',
                  onTextInput: _textInputHandler,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                TextKey(
                  text: '',
                  onTextInput: _textInputHandler,
                ),
                TextKey(
                  text: '0',
                  onTextInput: _textInputHandler,
                ),
                BackspaceKey(
                  onBackspace: _backspaceHandler,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextKey extends StatelessWidget {
  const TextKey({
    Key? key,
    required this.text,
    required this.onTextInput,
    this.flex = 1,
  }) : super(key: key);

  final String text;
  final ValueSetter<String> onTextInput;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              onTextInput.call(text);
            },
            child: Center(
                child: Text(
              text,
              style: const TextStyle(
                fontSize: 30,
              ),
            )),
          ),
        ),
      ),
    );
  }
}

class BackspaceKey extends StatelessWidget {
  const BackspaceKey({
    Key? key,
    required this.onBackspace,
    this.flex = 1,
  }) : super(key: key);

  final VoidCallback onBackspace;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              onBackspace.call();
            },
            child: Container(
              child: const Center(
                child: Icon(
                  Icons.backspace_outlined,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Country'),
      ),
      body: Container(
        child: CountryPickerWidget(
          onSelected: (country) => Navigator.pop(context, country),
        ),
      ),
    );
  }
}
