import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'label_widget.dart';
import 'status_widget.dart';

class BillWidget extends ConsumerWidget {
  const BillWidget({
    super.key,
    required this.month,
    required this.totalBill,
    required this.isUtility,
    required this.isPaid,
  });

  final String month;
  final String totalBill;
  final bool isUtility;
  final bool isPaid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelWidget(
                label: isUtility ? 'Utility' : 'Service Charge',
                color: isUtility ? Colors.deepPurpleAccent : Colors.orange,
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    month,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  StatusWidget(
                    statusPayment: isPaid ? 'PAID' : 'UNPAID',
                    color: isPaid ? Colors.green : Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Bill',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'IDR $totalBill',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
