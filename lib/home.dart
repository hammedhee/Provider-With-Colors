import 'package:flutter/material.dart';
import 'package:multiprovider/provider1.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<provider2>(context, listen: false);
    return Scaffold(
      body: Consumer2<Provider1, provider2>(
        builder: (context, value, value2, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          child: Center(
                            child: Text('Container 1'),
                          ),
                          color: value.colorForContainer1),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            value.green();
                          },
                          child: Text('change colors '))
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Text('Container 2'),
                        ),
                        color: value.colorForContainer2,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            value.blue();
                          },
                          child: Text('change colors ')),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Container(child: CircularProgressIndicator()),
              ElevatedButton(
                  onPressed: () {
                    pro.changecardcolor();
                  },
                  child: Text('NEXT COLOR'))
            ],
          );
        },
      ),
    );
  }
}
