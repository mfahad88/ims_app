class Supplier{
  int supplierId;
  String supplierName;
  String contactPerson;
  String phoneNumber;
  String email;
  String? address;

  Supplier(
      {required this.supplierId,
      required this.supplierName,
      required this.contactPerson,
      required this.phoneNumber,
      required this.email,
      this.address});

  @override
  String toString() {
    return 'Supplier{supplierId: $supplierId, supplierName: $supplierName, contactPerson: $contactPerson, phoneNumber: $phoneNumber, email: $email, address: $address}';
  }
}