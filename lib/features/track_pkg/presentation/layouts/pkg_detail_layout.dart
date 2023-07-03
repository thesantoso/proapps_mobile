import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:proapps_mobile/core/widgets/custom_text_form_field.dart';

import '../../../../core/models/pkg_shorthand/pkg_shorthand.dart';

class PkgDetailLayout extends ConsumerWidget {
  const PkgDetailLayout({super.key, required this.item});

  final PkgShorthand item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.teal,
          ),
        ),
        centerTitle: false,
        title: const Text(
          'Packages Detail',
          style: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Container(
        width: 500.0,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                label: 'Tenant',
                enabled: false,
                initialValue: item.tenant,
              ),
              CustomTextFormField(
                label: 'Unit',
                enabled: false,
                initialValue: item.unitNumber,
              ),
              CustomTextFormField(
                label: 'Lantai',
                enabled: false,
                initialValue: item.floor,
              ),
              CustomTextFormField(
                label: 'Nama Pengambil',
                enabled: false,
                initialValue: item.recipient,
              ),
              CustomTextFormField(
                label: 'Waktu Diterima',
                enabled: false,
                initialValue: DateFormat('dd-MM-yyyy hh:mm')
                    .format(DateTime.parse(item.receivedAt!)),
              ),
              CustomTextFormField(
                label: 'Waktu Diambil',
                enabled: false,
                initialValue: item.pickedUpAt == null
                    ? item.pickedUpAt
                    : DateFormat('dd-MM-yyyy hh:mm')
                        .format(DateTime.parse(item.pickedUpAt!)),
              ),
              CustomTextFormField(
                label: 'Status',
                enabled: false,
                initialValue: item.status,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
