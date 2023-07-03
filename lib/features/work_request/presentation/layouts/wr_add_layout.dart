import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/errors/alert.dart';
import 'package:proapps_mobile/core/errors/snackbar.dart';
import 'package:proapps_mobile/core/models/wr_category.dart/wr_category.dart';
import 'package:proapps_mobile/core/router/named_routes.dart';
import 'package:proapps_mobile/core/widgets/custom_text_form_field.dart';

import '../controller/wr_controller.dart';

// DropdownMenuItem(
//   value: "Komplain",
//   child: Text('Komplain'),
// ),
// DropdownMenuItem(
//   value: "Administrasi",
//   child: Text('Administrasi'),
// ),
// DropdownMenuItem(
//   value: "Saran & Masukan",
//   child: Text('Saran & Masukan'),
// ),
// DropdownMenuItem(
//   value: "Visit",
//   child: Text('Visit'),
// ),
// DropdownMenuItem(
//   value: "Telepon",
//   child: Text('Telepon'),
// ),
// DropdownMenuItem(
//   value: "Whatsapp",
//   child: Text('Whatsapp'),
// ),
// DropdownMenuItem(
//   value: "Email",
//   child: Text('Email'),
// ),
// DropdownMenuItem(
//   value: "Lainnya",
//   child: Text('Lainnya'),
// ),

class WorkRequestAddLayout extends HookConsumerWidget {
  const WorkRequestAddLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final wrCategory = useState<int>(1);
    Map<String, dynamic> formValues = {};
    final GlobalKey<AnimatedListState> animationKeyItems =
        GlobalKey<AnimatedListState>();
    final imageURL = useState<String?>(null);
    final wrCategories = useState<List<WRCategory>>([]);
    final wrCtgyConn = ref.watch(wrControllerProvider.notifier);
    final items = [];

    useEffect(() {
      wrCtgyConn.getWRCategory().then((value) {
        wrCategories.value = value;
        wrCategory.value = wrCategories.value[0].id;
      });

      return null;
    });

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
          'Add Work Request',
          style: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const Text(
                  "Work Request Category",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: wrCategories.value
                          .map(
                            (e) => DropdownMenuItem(
                              value: e.id,
                              child: Text(e.categoryName),
                            ),
                          )
                          .toList(),
                      value: wrCategory.value,
                      onChanged: (value) {
                        formValues["wrCategory"] = value;
                        wrCategory.value = value!;
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Take picture",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(NamedRoutes.camera.name).then((value) {
                      if (value != null) {
                        imageURL.value = value.toString();
                      }
                    });
                  },
                  child: Container(
                    height: imageURL.value != null ? 500 : 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: imageURL.value == null || imageURL.value!.isEmpty
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.image, size: 30),
                              Text('Tap to take a picture'),
                            ],
                          )
                        : Image.file(File(imageURL.value!), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Services / Items",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.teal,
                      ),
                    )
                  ],
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: CustomTextFormField(
                    label: "Item",
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(-1, -1),
              blurRadius: 5,
              spreadRadius: 0.1,
              color: Colors.grey.shade200,
            ),
          ],
        ),
        child: GestureDetector(
          onTap: () {
            if (formKey.currentState!.validate()) {
              context.customDialog(
                context: context,
                onYes: () {
                  context.pop();
                  context.pop();
                  context.showSuccessSnackBar(message: "Work Request Added");
                },
                onNo: () => context.pop(),
              );
            }
          },
          child: Container(
            height: 55,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.teal,
            ),
            child: const Text(
              "Add Work Request",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
