import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blue.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          // Widget title
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: const Text(
              'Context Menu',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                inherit: false,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Widget demonstration
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoContextMenu(
                      actions: [
                        CupertinoContextMenuAction(child: Text("Action 1")),
                        CupertinoContextMenuAction(child: Text("Action 2")),
                      ],
                      child: Image.network(
                        "https://tse3.mm.bing.net/th/id/OIP.PHCt-7Qch7TjcTBCv6rqdQHaHa?pid=ImgDet&w=184&h=184&c=7&dpr=1.4&o=7&rm=3",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
