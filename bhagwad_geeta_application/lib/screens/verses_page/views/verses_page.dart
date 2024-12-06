import 'package:bhagwad_geeta_application/provider/json_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VersesPage extends StatefulWidget {
  const VersesPage({super.key});

  @override
  State<VersesPage> createState() => _VersesPageState();
}

class _VersesPageState extends State<VersesPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var pr = context.read<JsonProvider>();
    var pw = context.watch<JsonProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Verses",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        actions: [],
      ),
      body: ListView.builder(
        itemCount: (pw.lang == "hindi")
            ? pw.fhList.length
            : (pw.lang == "english")
                ? pw.feList.length
                : pw.fList.length,
        itemBuilder: (context, index) {
          return ListTile(
              onTap: () {
                if (pw.lang == "hindi") {
                  Navigator.pushNamed(context, 'page',
                      arguments: pr.fhList[index]);
                } else if (pw.lang == "english") {
                  Navigator.pushNamed(context, 'page',
                      arguments: pr.feList[index]);
                } else {
                  Navigator.pushNamed(context, 'page',
                      arguments: pw.fList[index]);
                }
              },
              title: (pw.lang == "hindi")
                  ? Text("${pr.fhList[index].detail![index].text}")
                  : (pw.lang == "english")
                      ? Text("${pr.feList[index].english}")
                      : Text("${pr.fList[index].text}"));
        },
      ),
    );
  }
}
