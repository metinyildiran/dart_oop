void main() {
  PersonelManager personelManager = PersonelManager();
  personelManager.add();

  CustomerManager customerManager = CustomerManager();

  var customer = Customer.asdasd("Metin",lastName: "Yıldıran");

  customerManager.add(customer);
}

class PersonelManager {
  void add() {
    print("Personel Eklendi");
  }

  void guncelle() {
    print("Personel Güncellendi");
  }

  void sil() {
    print("Personel Silindi");
  }
}

class CustomerManager {
  void add(Customer customer) {
    print("Customer " + customer.firstName + " Eklendi");
  }

  void guncelle() {
    print("Customer Güncellendi");
  }

  void sil() {
    print("Customer Silindi");
  }
}

class Customer {
  late String firstName;
  late String lastName;

  Customer() {}

  Customer.asdasd(String firstName, {String lastName = ""}) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
}
