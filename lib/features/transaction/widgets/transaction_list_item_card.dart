import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';
import 'package:sewa_barang_client/core/style/app_text_styles.dart';
import 'package:sewa_barang_client/core/utils/datetime_utils.dart';
import 'package:sewa_barang_client/core/utils/format_trx.dart';
import 'package:sewa_barang_client/core/utils/image_url_utils.dart';
import 'package:sewa_barang_client/core/utils/string_utils.dart';
import 'package:sewa_barang_client/core/widgets/chip_widget.dart';
import 'package:sewa_barang_client/core/models/models.dart';
import 'package:sewa_barang_client/core/widgets/neutral_card.dart';
import 'package:sewa_barang_client/core/widgets/outlined_card.dart';

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
      child: OutlinedCard(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NOMOR TRANSAKSI',
                        style: AppTextStyles.poppinsLgSemiBoldInfo1,
                      ),
                      Text(
                        formatTRX(model.id),
                        style: AppTextStyles.poppinsLgBoldBlack,
                      ),
                    ],
                  ),
                ),
                ChipWidget(
                  variant:
                      model.status?.chipVariant ?? ChipWidgetVariant.primary,
                  label: model.status?.displayName ?? '-',
                ),
              ],
            ),
            const Divider(
              color: AppColors.neutral3,
              height: 1,
            ),
            Row(
              spacing: 8,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(12)),
                  child: model.product?.photoUrl != null
                      ? CachedNetworkImage(
                          imageUrl: resolveApiImageUrl(
                                  model.product!.photoUrl!) ??
                              '',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                          errorWidget: (_, __, ___) => Container(
                              height: 80,
                              width: 80,
                              color: AppColors.neutral1,
                              child: const Icon(Icons.inventory_2,
                                  size: 36, color: AppColors.neutral3)),
                        )
                      : Container(
                          height: 80,
                          width: 80,
                          color: AppColors.neutral1,
                          child: const Icon(Icons.inventory_2,
                              size: 36, color: AppColors.neutral3),
                        ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.product?.name ?? '-',
                        style: AppTextStyles.poppinsLgBoldBlack,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${StringUtil.formatNumberForHuman(model.qty.toDouble())} item • ${StringUtil.formatCurrencyIdr(model.rentPrice.toDouble())}',
                        style: AppTextStyles.poppinsMdRegularNeutral4,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _buildDate(context, model),
            _buildNote(context, model),
          ],
        ),
      ),
    );
  }

  Widget _buildDate(BuildContext context, RentTransactionModel model) {
    bool isDone = model.status == RentTransactionStatus.done ||
        model.status == RentTransactionStatus.returned ||
        model.status == RentTransactionStatus.overdue;
    return NeutralCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            const Icon(Icons.calendar_month, color: AppColors.info1, size: 18),
            Expanded(
                child: Text('TANGGAL SEWA',
                    style: AppTextStyles.poppinsSmRegularNeutral4)),
            Flexible(
                child: Text(model.rentDate.dMMMyyyy(),
                    style: AppTextStyles.poppinsSmSemiBoldBlack,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right)),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 7),
          child: SizedBox(
              height: 16,
              child: VerticalDivider(color: AppColors.neutral3, thickness: 1)),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            const Icon(Icons.calendar_month, color: AppColors.info1, size: 18),
            Expanded(
                child: Text(isDone ? 'TANGGAL KEMBALI' : 'ESTIMASI KEMBALI',
                    style: AppTextStyles.poppinsSmRegularNeutral4)),
            Flexible(
                child: Text(
                    isDone
                        ? (model.returnDate != null
                            ? model.returnDate!.dMMMyyyy()
                            : '-')
                        : model.expectedReturnDate.dMMMyyyy(),
                    style: AppTextStyles.poppinsSmSemiBoldBlack,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right)),
          ],
        )
      ],
    ));
  }

  Widget _buildNote(BuildContext context, RentTransactionModel model) {
    return OutlinedCard(
        child: Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 4,
          children: [
            const Icon(
              Icons.note_alt,
              color: AppColors.neutral3,
            ),
            Text(
              'CATATAN',
              style: AppTextStyles.poppinsMdRegularNeutral4,
            ),
          ],
        ),
        Text(
          '"${model.notes}"',
          style: AppTextStyles.poppinsMdRegularBlack,
        )
      ],
    ));
  }
}
