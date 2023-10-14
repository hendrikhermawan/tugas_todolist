import 'package:flutter/material.dart';

class MyList4 extends StatefulWidget {
  const MyList4({Key? key});

  @override
  State<MyList4> createState() => _MyList4State();
}

class _MyList4State extends State<MyList4> {
  List<Map<String, String>> data = [
    {"nama": "data1", "prodi": "Prodi1", "alamat": "Alamat1"},
    {"nama": "data2", "prodi": "Prodi2", "alamat": "Alamat2"},
    {"nama": "data3", "prodi": "Prodi3", "alamat": "Alamat3"},
    {"nama": "data4", "prodi": "Prodi4", "alamat": "Alamat4"},
  ];

  final namaController = TextEditingController();
  final prodiController = TextEditingController();
  final alamatController = TextEditingController();

  void addData(String nama, String prodi, String alamat) {
    setState(() {
      data.add({"nama": nama, "prodi": prodi, "alamat": alamat});
      namaController.clear();
      prodiController.clear();
      alamatController.clear();
    });
  }

  void delData(int index) {
    setState(() {
      data.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "nama"),
            controller: namaController,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Prodi"),
            controller: prodiController,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Alamat"),
            controller: alamatController,
          ),
          TextButton(
            onPressed: () {
              addData(namaController.text, prodiController.text, alamatController.text);
            },
            child: Text("tambah"),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.amber),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: FlutterLogo(
                      size: 50,
                    ),
                    title: Text(data[index]["nama"]!),
                    trailing: IconButton(
                      onPressed: () {
                        delData(index);
                      },
                      icon: Icon(Icons.delete_forever),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailList(
                          nama: data[index]["nama"],
                          prodi: data[index]["prodi"],
                          alamat: data[index]["alamat"],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailList extends StatelessWidget {
  final String? nama;
  final String? prodi;
  final String? alamat;

  DetailList({Key? key, this.nama, this.prodi, this.alamat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Column(
        children: [
          Text("Nama: " + (nama ?? "")),
          Text("Prodi: " + (prodi ?? "")),
          Text("Alamat: " + (alamat ?? "")),
        ],
      ),
    );
  }
}
