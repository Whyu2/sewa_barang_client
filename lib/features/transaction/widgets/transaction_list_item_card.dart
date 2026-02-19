import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sewa_barang_client/core/style/app_colors.dart';
import 'package:sewa_barang_client/core/style/app_text_styles.dart';
import 'package:sewa_barang_client/core/utils/datetime_utils.dart';
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
                        '# ${model.id}',
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
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: AppColors.neutral1,
                    image: model.pickupProofUrl != null
                        ? DecorationImage(
                            image: CachedNetworkImageProvider(
                              model.pickupProofUrl!,
                            ),
                          )
                        : null,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.product?.name ?? '-',
                      style: AppTextStyles.poppinsLgBoldBlack,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                '${StringUtil.formatNumberForHuman(model.qty.toDouble())} item',
                            style: AppTextStyles.poppinsLgRegularNeutral4,
                          ),
                          TextSpan(
                            text: ' • ',
                            style: AppTextStyles.poppinsLgRegularNeutral4,
                          ),
                          TextSpan(
                            text: StringUtil.formatCurrencyIdr(
                                model.rentPrice.toDouble()),
                            style: AppTextStyles.poppinsLgRegularInfo1,
                          ),
                        ],
                      ),
                    )
                  ],
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
    bool isDone = model.status == RentTransactionStatus.done;
    return NeutralCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4,
          children: [
            const Icon(
              Icons.calendar_month,
              color: AppColors.info1,
            ),
            Text(
              'TANGGAL SEWA',
              style: AppTextStyles.poppinsMdRegularNeutral4,
            ),
            const Spacer(),
            Text(
              model.renterDate.dMMMMyyyy(),
              style: AppTextStyles.poppinsMdSemiBoldBlack,
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 4),
          child: SizedBox(
            height: 24,
            child: VerticalDivider(
              color: AppColors.neutral3,
              thickness: 1,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4,
          children: [
            const Icon(
              Icons.calendar_month,
              color: AppColors.info1,
            ),
            Text(
              isDone ? 'TANGGAL KEMBALI' : 'ESTIMASI KEMBALI',
              style: AppTextStyles.poppinsMdRegularNeutral4,
            ),
            const Spacer(),
            Text(
              isDone
                  ? model.returnDate != null
                      ? model.returnDate!.dMMMMyyyy()
                      : '-'
                  : model.expectedReturnDate.dMMMMyyyy(),
              style: AppTextStyles.poppinsMdSemiBoldBlack,
            )
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
