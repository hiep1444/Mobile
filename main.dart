import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyCaculator(),
    );
  }
}
//Activity : man hinh
class MyCaculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyCaculatorState();
  }

}

//Lop quan ly trang thai cua man hinh chinh
class MyCaculatorState extends State<MyCaculator>{
  TextEditingController num1Control = TextEditingController(); // Text 1
  TextEditingController num2Control = TextEditingController(); // Text 2
  String kq = '';
  //Ham Tinh Tong va cap nhat trang thai
  void caculatorSum(){
    double num1 = double.tryParse(num1Control.text) ?? 0.0;
    double num2 = double.tryParse(num2Control.text) ?? 0.0;
    double num = num1 + num2;
    //Cap nhat trang thai
    setState(() {
      kq = 'Tong : $num';
    });

  }
  //Giao dien cua activity
  @override
  Widget build(BuildContext context) {
    //Tra ve 1 man hinh
    return Scaffold(
        appBar: AppBar(
            title : Text("Ung dung tinh tong")
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Thanh phan chinh - text 1
                TextField(
                  controller: num1Control,
                  keyboardType: TextInputType.number, // Chi cho nhap so
                  decoration: InputDecoration(labelText: 'Nhap so 1'), //Nhap so 1
                ),
                SizedBox(height: 10.0,), //Khoang cach giua 2 o nhap lieu
                //Thanh phan chinh - text 2
                TextField(
                  controller: num2Control,
                  keyboardType: TextInputType.number, // Chi cho nhap so
                  decoration: InputDecoration(labelText: 'Nhap so 2'), //Nhap so 2
                ),
                SizedBox(height: 10.0,), //Khoang cach giua 2 o nhap lieu
                ElevatedButton(
                    onPressed: caculatorSum,
                    child: Text('Tinh tong')
                ),
                SizedBox(height: 20.0,),
                Text(
                    kq,
                    style: TextStyle(fontSize: 18.0,color: Colors.red, height: 8.0)
                )
              ],
            )
        )
    );
  }

}