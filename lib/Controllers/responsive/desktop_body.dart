import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
     Padding(
      padding: const EdgeInsets.fromLTRB(200, 30, 200, 30),
      child: Row(
        children: [
          // First column
          Expanded(
            child: Column(
              children: [
                // youtube video
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[400],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                ),

                // comment section & recommended videos
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          height: 120,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),

          // second column
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              width: 200
            ),
          )
        ],
      ),
    );
  }
}
