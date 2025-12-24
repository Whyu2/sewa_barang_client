import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/widgets/text_input_field.dart';

class RentFormPage extends StatelessWidget {
  final String code;
  const RentFormPage({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return RentFormPageContent(
      code: code,
    );
  }
}

class RentFormPageContent extends StatefulWidget {
  final String code;
  const RentFormPageContent({super.key, required this.code});

  @override
  State<RentFormPageContent> createState() => _RentFormPageContentState();
}

class _RentFormPageContentState extends State<RentFormPageContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: <Widget>[
            Text(
              'Masukkan Data Penyewa',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const TextInputField(
              label: 'Nama Penyewa',
            ),
            const TextInputField(
              label: 'No Hp Penyewa',
            ),
            const TextInputField(
              label: 'Tanggal Sewa',
            ),
            const TextInputField(
              label: 'Harga Sewa',
            ),
            const TextInputField(
              label: 'QTY',
            ),
            const TextInputField(
              label: 'Estimasi Tanggal Pengembalian',
            ),
            const TextInputField(
              label: 'Catatan',
            ),
            const TextInputField(
              label: 'Foto Bukti Pengambalian',
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Simpan'),
                icon: const Icon(Icons.save),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
