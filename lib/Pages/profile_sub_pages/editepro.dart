import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:property/Widgets/header.dart';

class EditPro extends StatefulWidget {
  EditPro({
    super.key,
  });

  @override
  State<EditPro> createState() => _EditProState();
}

class _EditProState extends State<EditPro> {
  TextEditingController _controller =
      TextEditingController(text: 'Tesfawtsion Shimelis');

  TextEditingController _controller1 =
      TextEditingController(text: '12/27/1998');

  TextEditingController _controller2 =
      TextEditingController(text: 'Tesfawtsion@gmail.com');

  TextEditingController _controller3 =
      TextEditingController(text: '08 Werda, gelan Conduminum');

  @override
  Widget build(BuildContext context) {
    var _selectedOption;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 5.w,
          ),
          HeadWideget1(
              onpressed: () {
                Navigator.pop(context);
              },
              text: 'Edit Profile'),
          SizedBox(
            height: 5.w,
          ),
          FormField(controller: _controller),
          SizedBox(
            height: 15.w,
          ),
          FormField(controller: _controller1),
          SizedBox(
            height: 15.w,
          ),
          FormField(controller: _controller2),
          SizedBox(
            height: 15.w,
          ),
          RoundedDropdownContainer(
            items: ['Adis Abeba', 'Jimma', 'ArbaMinch'],
            value: _selectedOption,
            onChanged: (newValue) {
              setState(() {
                _selectedOption = newValue;
              });
            },
          ),
          SizedBox(
            height: 15.w,
          ),
          Container(
            width: 320.w,
            child: IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(),
                ),
              ),
              onChanged: (phone) {
                print(phone.completeNumber);
              },
              onCountryChanged: (country) {
                print('Country changed to: ' + country.name);
              },
            ),
          ),
          SizedBox(
            height: 15.w,
          ),
          FormField(controller: _controller3),
          SizedBox(
            height: 15.w,
          ),
          RoundedDropdownContainer(
            items: [
              'Male',
              'Female',
            ],
            value: _selectedOption,
            onChanged: (newValue) {
              setState(() {
                _selectedOption = newValue;
              });
            },
          ),
        ],
      )),
    );
  }
}

class RoundedDropdownContainer extends StatefulWidget {
  final List<String> items;
  final String? value; // Make value nullable

  // Add a default onChanged callback that does nothing
  final Function(String)? onChanged;

  RoundedDropdownContainer({required this.items, this.value, this.onChanged});

  @override
  _RoundedDropdownContainerState createState() =>
      _RoundedDropdownContainerState();
}

class _RoundedDropdownContainerState extends State<RoundedDropdownContainer> {
  String _selectedOption = '';

  @override
  void initState() {
    super.initState();

    // Initialize _selectedOption to the current value, or to the first item in the list if value is null
    _selectedOption = widget.value ?? widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: SizedBox(),
        elevation: 0,
        borderRadius: BorderRadius.circular(10),
        value: _selectedOption,
        items: widget.items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            _selectedOption = newValue!;
          });

          if (widget.onChanged != null) {
            widget.onChanged!(_selectedOption);
          }
        },
      ),
    );
  }
}

class FormField extends StatelessWidget {
  const FormField({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          hintText: 'Enter text',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
        onTap: () {
          _controller.selection = TextSelection.fromPosition(
              TextPosition(offset: _controller.text.length));
        },
        onChanged: (value) {
          // Do something with the new value entered by the user
        },
      ),
    );
  }
}
