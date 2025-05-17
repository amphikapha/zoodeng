import 'package:flutter/material.dart';
import 'package:zoodeng/models/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoodeng/screens/addform.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: data[index].job.color,
                  ),
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].name,
                            style: GoogleFonts.kanit(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${data[index].age} years old, ${data[index].job.title}",
                            style: GoogleFonts.kanit(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(data[index].job.image,
                          width: 60, height: 60, fit: BoxFit.cover),
                    ],
                  ));
            },
          ),
        ),
        SizedBox(
          height: 60,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const AddForm(),
                    ));
              },
              icon: const Icon(
                Icons.add,
                size: 40,
                color: Colors.blue,
              )),
        )
      ],
    );
  }
}
