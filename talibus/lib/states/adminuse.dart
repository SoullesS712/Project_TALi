import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class Adminuse extends StatefulWidget {
  const Adminuse({Key? key}) : super(key: key);

  @override
  _AdminsetWidgetState createState() => _AdminsetWidgetState();
}

class _AdminsetWidgetState extends State<Adminuse>
    with TickerProviderStateMixin {
  TextEditingController? textController;
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  bool? switchListTileValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color.fromARGB(255, 70, 70, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.network(
                      'https://png.pngtree.com/png-vector/20190704/ourlarge/pngtree-administration-icon-in-trendy-style-isolated-background-png-image_1539153.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Text(
                  'Admin',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    color: Color(0xFF101213),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Divider(
                height: 44,
                thickness: 1,
                indent: 24,
                endIndent: 24,
                color: Color(0xFFE0E3E7),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xFFE0E3E7),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Icon(
                            Icons.directions_bus,
                            color: Color(0xFF101213),
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: SwitchListTile.adaptive(
                            value: switchListTileValue1 ??= true,
                            onChanged: (newValue) async {
                              setState(() => switchListTileValue1 = newValue);
                            },
                            title: const Text(
                              'Bus1',
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Color(0xFF57636C),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            tileColor: Colors.white,
                            activeColor: Color(0xFF39D2C0),
                            activeTrackColor: Color(0x3439D2C0),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding:
                                const EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 4, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 5, 16, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFE0E3E7),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Icon(
                            Icons.directions_bus,
                            color: Color(0xFF101213),
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: SwitchListTile.adaptive(
                            value: switchListTileValue2 ??= true,
                            onChanged: (newValue) async {
                              setState(() => switchListTileValue2 = newValue);
                            },
                            title: const Text(
                              'Bus2',
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Color(0xFF57636C),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            tileColor: Colors.white,
                            activeColor: const Color(0xFF39D2C0),
                            activeTrackColor: const Color(0x3439D2C0),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding:
                                const EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 4, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 5, 16, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xFFE0E3E7),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Icon(
                            Icons.directions_bus,
                            color: Color(0xFF101213),
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: SwitchListTile.adaptive(
                            value: switchListTileValue3 ??= true,
                            onChanged: (newValue) async {
                              setState(() => switchListTileValue3 = newValue);
                            },
                            title: const Text(
                              'Bus3',
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Color(0xFF57636C),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            tileColor: Colors.white,
                            activeColor: const Color(0xFF39D2C0),
                            activeTrackColor: const Color(0x3439D2C0),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding:
                                const EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 4, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(5),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: textController,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            labelText: 'announcement',
                            filled: true,
                          ),
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(14.0),
                    textStyle: const TextStyle(fontSize: 17),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "adminuse");
                  },
                  child: const Text('log out'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
