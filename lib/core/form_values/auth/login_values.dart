import 'package:proapps_mobile/core/models/form_field_model.dart';

class LoginValues {
  static FormFieldModel email =
      const FormFieldModel(key: 'email', label: 'Email');

  static FormFieldModel password =
      const FormFieldModel(key: 'password', label: 'Password');
}
