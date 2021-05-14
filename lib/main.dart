void main() {
  var personelManager = PersonelManager();
  personelManager.add();

  var customerManager = CustomerManager();

  Person customer1 = Customer.asdasd("Metin", lastName: "Yıldıran");

  customerManager.add(customer1);

  var customer2 = Customer.asdasd("Ahmet");

  customer1 = customer2;
  customer2.firstName = "Murat";

  customerManager.add(customer1);


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
  void add(Person person) {
    print("Customer " + person.firstName + " Eklendi");
  }

  void guncelle() {
    print("Customer Güncellendi");
  }

  void sil() {
    print("Customer Silindi");
  }
}

class Person {
  late String firstName;
  late String lastName;
  late String identityNumber;
}

class Customer extends Person {

  Customer() {}

  Customer.asdasd(String firstName, {String lastName = ""}) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
}

class Personel extends Person {
  late int dateOfStart;

  Personel() {}

  Personel.asdasd(String firstName, {String lastName = "", this.dateOfStart = 1980}) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
}
