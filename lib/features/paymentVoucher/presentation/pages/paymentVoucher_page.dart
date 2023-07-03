import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/paymentVoucher_layout.dart';

class PaymentVoucherPage extends ConsumerWidget {
  const PaymentVoucherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PaymentVoucherLayout();
  }
}