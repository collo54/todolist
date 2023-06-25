import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list_app/constants/colors.dart';

import '../pages/task_list_page.dart';

class AddTaskMobileLayout extends StatefulWidget {
  const AddTaskMobileLayout({super.key});

  @override
  State<AddTaskMobileLayout> createState() => _AddTaskMobileLayoutState();
}

class _AddTaskMobileLayoutState extends State<AddTaskMobileLayout> {
  final _formKey = GlobalKey<FormState>();
  String? _task;
  String? _dropdownvalue;
  String? _dropdownvalue2;
  String? _dropdownvalue3;
  final list = ['Work', 'Personal Project', 'Self'];
  final list2 = ['Needs Done', 'Nice to have', 'Nice idea'];
  final list3 = ['None', 'Today', 'Three days'];

  void _dropDownCallback(String selectedvalue) {
    setState(() {
      _dropdownvalue = selectedvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 850,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: _buildForm(),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _buildFormChildren(),
      ),
    );
  }

  List<Widget> _buildFormChildren() {
    return [
      Text(
        'Task',
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: kblackgrey62606310,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Task';
          }
          return null;
        },
        initialValue: '',
        onSaved: (value) => _task = value!.trim(),
        style: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: kblackgrey62606310,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        decoration: InputDecoration(
          fillColor: kwhite25525525510,
          label: Text(
            ' Wireframing ',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: kblackgrey62606310,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          filled: true,
          hintText: '',
          labelStyle: const TextStyle(
            color: kblackgrey62606310,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusColor: const Color.fromRGBO(243, 242, 242, 1),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            borderRadius: BorderRadius.circular(4.0),
          ),
          hintStyle: GoogleFonts.dmSans(
            textStyle: const TextStyle(
              color: kblackgrey62606310,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        maxLines: 1,
        textAlign: TextAlign.start,
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        'Type',
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: kblackgrey62606310,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      DropdownButtonFormField(
        value: _dropdownvalue ?? list[1],
        isExpanded: true,
        onChanged: (value) {
          setState(() {
            _dropdownvalue = value;
          });
        },
        onSaved: (value) {
          setState(() {
            _dropdownvalue = value;
          });
        },
        validator: (value) {
          if (value!.isEmpty) {
            return 'Type';
          }
          return null;
        },
        items: list.map((String val) {
          return DropdownMenuItem(
            value: val,
            child: Text(
              val,
            ),
          );
        }).toList(),
        decoration: InputDecoration(
          fillColor: kwhite25525525510,
          filled: true,
          hintText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusColor: const Color.fromRGBO(243, 242, 242, 1),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            borderRadius: BorderRadius.circular(4.0),
          ),
          hintStyle: GoogleFonts.dmSans(
            textStyle: const TextStyle(
              color: kblackgrey62606310,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        'Priority',
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: kblackgrey62606310,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      DropdownButtonFormField(
        value: _dropdownvalue2 ?? list2[0],
        isExpanded: true,
        onChanged: (value) {
          setState(() {
            _dropdownvalue2 = value;
          });
        },
        onSaved: (value) {
          setState(() {
            _dropdownvalue2 = value;
          });
        },
        validator: (value) {
          if (value!.isEmpty) {
            return 'Priority';
          }
          return null;
        },
        items: list2.map((String val) {
          return DropdownMenuItem(
            value: val,
            child: Text(
              val,
            ),
          );
        }).toList(),
        decoration: InputDecoration(
          fillColor: kwhite25525525510,
          filled: true,
          hintText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusColor: const Color.fromRGBO(243, 242, 242, 1),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            borderRadius: BorderRadius.circular(4.0),
          ),
          hintStyle: GoogleFonts.dmSans(
            textStyle: const TextStyle(
              color: kblackgrey62606310,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        'Timeframe',
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: kblackgrey62606310,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      DropdownButtonFormField(
        value: _dropdownvalue3 ?? list3[2],
        isExpanded: true,
        onChanged: (value) {
          setState(() {
            _dropdownvalue3 = value;
          });
        },
        onSaved: (value) {
          setState(() {
            _dropdownvalue3 = value;
          });
        },
        validator: (value) {
          if (value!.isEmpty) {
            return 'Timeframe';
          }
          return null;
        },
        items: list3.map((String val) {
          return DropdownMenuItem(
            value: val,
            child: Text(
              val,
            ),
          );
        }).toList(),
        decoration: InputDecoration(
          fillColor: kwhite25525525510,
          filled: true,
          hintText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusColor: const Color.fromRGBO(243, 242, 242, 1),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            borderRadius: BorderRadius.circular(4.0),
          ),
          hintStyle: GoogleFonts.dmSans(
            textStyle: const TextStyle(
              color: kblackgrey62606310,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        'Description',
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: kblackgrey62606310,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      TextFormField(
        maxLength: 500,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Description';
          }
          return null;
        },
        initialValue:
            'The purpose of this project is to design a user-friendly and intuitive wireframing to-do list application that allows users to create, manage and track their tasks efficiently.',
        onSaved: (value) => _task = value!.trim(),
        style: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: kblackgrey62606310,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        decoration: InputDecoration(
          fillColor: kwhite25525525510,
          filled: true,
          hintText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusColor: const Color.fromRGBO(243, 242, 242, 1),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kwhite21421421410, width: 1),
            borderRadius: BorderRadius.circular(4.0),
          ),
          hintStyle: GoogleFonts.dmSans(
            textStyle: const TextStyle(
              color: kblackgrey62606310,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        maxLines: 10,
        textAlign: TextAlign.start,
      ),
      const SizedBox(
        height: 15,
      ),
      _buildButtons(context),
      const SizedBox(
        height: 15,
      ),
    ];
  }

  Widget _buildButtons(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: MaterialButton(
        minWidth: 204,
        height: 48,
        color: kpurple13413323910,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TaskListPage(),
            ),
          );
        },
        child: Center(
          child: Text(
            'Submit',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: kwhite25525525510,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
