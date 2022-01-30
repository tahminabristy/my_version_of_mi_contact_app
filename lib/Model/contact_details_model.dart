class ContactDetailsModel {
  String name;
  String? company;
  String? title;
  String phone;
  String email;

  ContactDetailsModel(
      {required this.name,
        this.company,
        this.title,
        required this.phone,
        required this.email
      }
      );
}