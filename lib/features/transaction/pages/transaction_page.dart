import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sewa_barang_client/features/transaction/blocs/get_list_transaction/get_list_transaction_bloc.dart';
import 'package:sewa_barang_client/features/transaction/widgets/transaction_list_item_card.dart';

class TransactionPage extends StatelessWidget {
  final GetListTransactionBloc getListTransactionBloc;
  const TransactionPage({super.key, required this.getListTransactionBloc});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getListTransactionBloc,
      child: const TransactionContent(),
    );
  }
}

class TransactionContent extends StatefulWidget {
  const TransactionContent({super.key});

  @override
  State<TransactionContent> createState() => _TransactionContentState();
}

class _TransactionContentState extends State<TransactionContent> {
  @override
  void initState() {
    super.initState();
    context.read<GetListTransactionBloc>().add(
          const GetListTransactionEvent.fetch(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetListTransactionBloc, GetListTransactionState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.status == GetListTransactionStatus.loaded) {
          if (state.error != null) {
            return Center(
              child: Text(state.error.toString()),
            );
          }

          return ListView.builder(
            itemCount: state.data!.length,
            itemBuilder: (context, index) {
              return TransactionListItemCard(
                model: state.data![index],
                onTap: () {},
              );
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
