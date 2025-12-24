import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/utils/string_utils.dart';
import 'package:sewa_barang_client/core/widgets/chip_widget.dart';
import 'package:sewa_barang_client/core/models/models.dart';

class TransactionListItemCard extends StatelessWidget {
  final RentTransactionModel model;
  final VoidCallback? onTap;

  const TransactionListItemCard({
    super.key,
    this.onTap,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    const Text(
                      'Order #: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      model.id.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  StringUtil.formatCurrencyIdr(model.rentPrice.toDouble()),
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.product?.name ?? '-',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Qty: ${model.qty}',
                      style: const TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                const Spacer(),
                ChipWidget(
                  variant:
                      model.status?.chipVariant ?? ChipWidgetVariant.primary,
                  label: model.status?.displayName ?? '-',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
