import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropdownScreen extends StatelessWidget {
  const DropdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop ++Down"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownSearch(
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
                //constraints: BoxConstraints.tight(Size.fromHeight(200)),
                //  constraints: BoxConstraints(maxHeight: 10000),
                contentPadding: EdgeInsets.zero,
                labelText: "User by id"),
          ),

          //enabled: false,
          //,

          items: const [
            "Monthly",
            "Every 3 Month",
            "Every 6 Month",
          ],
          //  dropdownSearchDecoration: InputDecoration(labelText: "Name"),
          onChanged: (value) {
            // controller.monthlyController
            //     .text = value.toString();
            // print(
            //     'MakeADonationOneScreen.build $value');
          },
          selectedItem: "Monthly",
          validator: (String? item) {
            if (item == null)
              return "Required field";
            else
              return null;
          },
        ),
      ),
    );
  }
}
