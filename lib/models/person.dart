import 'package:cloud_firestore/cloud_firestore.dart';

class Person {
  String? imageProfile;
  String? name;
  String? age;
  String? email;
  String? password;
  String? phone;
  String? country;
  String? city;

  String? height;
  String? weight;

  String? marital;
  String? prof;
  String? relation;

  String? nationality;
  String? relegion;
  String? language;
  String? publishTime;

  Person({
    this.imageProfile,
    this.name,
    this.age,
    this.email,
    this.password,
    this.phone,
    this.country,
    this.city,
    this.publishTime,
    this.height,
    this.weight,
    this.marital,
    this.prof,
    this.relation,
    this.nationality,
    this.relegion,
    this.language,
})

  static Person fromdataSnapshot(DocumentSnapshot snapshot){
    var datasnapshot = snapshot.data() as Map<String?, dynamic>

    return Person(

      name: datasnapshot["name"];
      imageProfile: datasnapshot["imageProfile"];
      age: datasnapshot["age"];
      email: datasnapshot["email"];
      password: datasnapshot["password"];
      phone: datasnapshot["phone"];
      country: datasnapshot["country"];
      city: datasnapshot["city"];
      height: datasnapshot["height"];
      weight: datasnapshot["weight"];
      marital: datasnapshot["marital"];
      prof: datasnapshot["prof"];
      relation: datasnapshot["relegion"];
      nationality: datasnapshot["nationality"];
      relegion: datasnapshot["relegion"];
      language: datasnapshot["language"];
    );
  }
  Map<String, dynamic> toJson()=>
  {
  "imageProfile" = imageProfile;
  "name" = name;
  "age" = age;
  ""


  }

}