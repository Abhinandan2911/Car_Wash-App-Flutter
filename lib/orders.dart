import 'package:carwash_app/work_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyOrdersPage();
  }
}

class _MyOrdersPage extends State<OrdersPage> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field
  TextEditingController adressController = TextEditingController();
  TextEditingController carNameController = TextEditingController();
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
              child: const Text(
                "Order Details",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              height: 80,
              child: Center(
                child: TextField(
                  controller: dateinput, //editing controller of this TextField
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                      ),
                  readOnly:
                      true, //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(
                            2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));

                    if (pickedDate != null) {
                      // print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      // print(formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        dateinput.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {
                      // print("Date is not selected");
                    }
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: TextField(
                controller: adressController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Adress',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: TextField(
                controller: carNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Car Name',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  child: const Text('Order Now'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SliderExample()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
