import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => _ToDoListState();
}

class _ToDoListState extends State {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Color> cardColorList = const [
      Color.fromRGBO(250, 232, 232, 1),
      Color.fromRGBO(232, 237, 250, 1),
      Color.fromRGBO(250, 249, 232, 1),
      Color.fromRGBO(232, 237, 250, 1),
      Color.fromRGBO(250, 232, 232, 1),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        title: const Text("TO Do list"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 25,
          left: 15,
          right: 15,
        ),
        child: ListView.builder(
            itemCount: cardColorList.length,
            itemBuilder: (context, index) {
              return Container(
                //height: 112,
                width: 330,
                margin: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                    color: cardColorList[index],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              margin: const EdgeInsets.only(
                                  left: 10, top: 23, bottom: 14, right: 15),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Image.network(
                                  "https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-image-512.png",
                                  width: 23,
                                  height: 19,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      //  height: 15,
                                      width: 260,
                                      margin: const EdgeInsets.only(
                                          top: 10, bottom: 10, right: 10),
                                      child: Text(
                                        "Lorem Ipsum is simply setting industry. ",
                                        style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            //  height: 15
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      // height: 44,
                                      width: 260,
                                      child: Text(
                                        "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                        style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,

                                            //  height: 15
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(width: 10),
                        Text("10 july 2023"),
                        Spacer(),
                        Icon(Icons.edit),
                        SizedBox(width: 10),
                        Icon(Icons.delete),
                        SizedBox(width: 10),
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 13, bottom: 26),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create task",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      )),
                    ),
                    TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        hintText: "Lorem Ipsum typeseting industry. ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0.5),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      )),
                    ),
                    TextField(
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0.5),
                            ),
                          ),
                          hintText:
                              "Simply dummy text of the printing and  has been the typesetting Lorem Ipsum has been the industry."),
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      )),
                    ),
                    TextField(
                      controller: _dateController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: "Enter Date",
                          suffixIcon: Icon(Icons.calendar_month)),
                    ),
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Submit"),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
