import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sewa_barang_client/core/models/enums/rent_transaction_status.dart';
import 'package:sewa_barang_client/core/routers/routers.dart';
import 'package:sewa_barang_client/core/widgets/app_button.dart';
import 'package:sewa_barang_client/features/transaction/blocs/get_list_transaction/get_list_transaction_bloc.dart';
import 'package:sewa_barang_client/features/transaction/widgets/transaction_list_item_card.dart';

class TransactionPage extends StatelessWidget {
  final GetListTransactionBloc getListTransactionBloc;
  const TransactionPage({super.key, required this.getListTransactionBloc});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => getListTransactionBloc, child: const TransactionContent());
  }
}

class TransactionContent extends StatefulWidget {
  const TransactionContent({super.key});
  @override
  State<TransactionContent> createState() => _TransactionContentState();
}

class _TransactionContentState extends State<TransactionContent> {
  RentTransactionStatus? _filter;
  @override
  void initState() {
    super.initState();
    context.read<GetListTransactionBloc>().add(const GetListTransactionEvent.fetch(mine: true));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetListTransactionBloc, GetListTransactionState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.status == GetListTransactionStatus.loading || state.status == GetListTransactionStatus.initial) return const Center(child: CircularProgressIndicator());
        if (state.status == GetListTransactionStatus.failure) return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text(state.error.toString()), const SizedBox(height: 8), AppButton(label: 'Retry', onPressed: () => context.read<GetListTransactionBloc>().add(const GetListTransactionEvent.fetch(mine: true)))]));
        final all = state.data ?? [];
        if (all.isEmpty) return RefreshIndicator(onRefresh: () async => context.read<GetListTransactionBloc>().add(const GetListTransactionEvent.fetch(mine: true)), child: ListView(children: const [SizedBox(height: 100), Center(child: Text('Belum ada transaksi')), Center(child: Icon(Icons.inbox, size: 64, color: Colors.grey))]));
        final filtered = _filter == null ? all : all.where((e) => e.status == _filter || (_filter == RentTransactionStatus.returned && e.status == RentTransactionStatus.done)).toList();
        return Column(children: [
          SingleChildScrollView(scrollDirection: Axis.horizontal, padding: const EdgeInsets.all(8), child: Row(spacing: 8, children: [
            ChoiceChip(label: const Text('Semua'), selected: _filter == null, onSelected: (_) => setState(() => _filter = null)),
            ChoiceChip(label: const Text('Disewa'), selected: _filter == RentTransactionStatus.rented, onSelected: (_) => setState(() => _filter = RentTransactionStatus.rented)),
            ChoiceChip(label: const Text('Terlambat'), selected: _filter == RentTransactionStatus.overdue, onSelected: (_) => setState(() => _filter = RentTransactionStatus.overdue)),
            ChoiceChip(label: const Text('Dikembalikan'), selected: _filter == RentTransactionStatus.returned, onSelected: (_) => setState(() => _filter = RentTransactionStatus.returned)),
          ])),
          Expanded(child: RefreshIndicator(onRefresh: () async => context.read<GetListTransactionBloc>().add(const GetListTransactionEvent.fetch(mine: true)), child: ListView.separated(padding: const EdgeInsets.all(16), itemCount: filtered.length, separatorBuilder: (_, __) => const SizedBox(height: 8), itemBuilder: (_, i) => TransactionListItemCard(model: filtered[i], onTap: () => GoRouter.of(context).push('${RouterConstans.transactionDetail}/${filtered[i].id}'))))),
        ]);
      },
    );
  }
}
