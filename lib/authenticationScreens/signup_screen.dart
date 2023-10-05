import 'package:dating_app/controllers/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/widgets/textfield.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController ageTextEditingController = TextEditingController();
  TextEditingController phoneEditingController = TextEditingController();
  TextEditingController cityTextEditingController = TextEditingController();
  TextEditingController countryTextEditingController = TextEditingController();

  TextEditingController heightTextEditingController = TextEditingController();
  TextEditingController weightTextEditingController = TextEditingController();

  TextEditingController maritalStatusTextEditingController = TextEditingController();
  TextEditingController professionTextEditingController = TextEditingController();
  TextEditingController relationshipTextEditingController = TextEditingController();

  TextEditingController nationalityTextEditingController = TextEditingController();
  TextEditingController languageTextEditingController = TextEditingController();
  TextEditingController relegionTextEditingController = TextEditingController();

  var authcontroller = AuthenticationController.authController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Text("Create Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("to get started now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 12,),
              authcontroller.profileImage == null ?
              GestureDetector(
                onTap: () async
                {
                  await authcontroller.pickImageFileFromGallery();
                  setState(() {
                    authcontroller.profileImage;
                  });
                },
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage("images/profile_avatar.jpg"),
                  backgroundColor: Colors.black,
                ),
              ) :
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(authcontroller.profileImage!),
                      ),
                    ),
                  ),

              SizedBox(height: 10,),
              Text(
                "Personal Details",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: nameTextEditingController,
                  iconData: Icons.person,
                  label: "Name",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: ageTextEditingController,
                  iconData: Icons.person_2,
                  label: "Age",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: emailTextEditingController,
                  iconData: Icons.email_outlined,
                  label: "Email Id",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: passwordTextEditingController,
                  iconData: Icons.password_outlined,
                  label: "Password",
                  isVisible: true,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: phoneEditingController,
                  iconData: Icons.call,
                  label: "Phone Number",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: countryTextEditingController,
                  iconData: Icons.map,
                  label: "Country",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: cityTextEditingController,
                  iconData: Icons.location_city,
                  label: "City",
                  isVisible: false,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "Appearance",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: heightTextEditingController,
                  iconData: Icons.height,
                  label: "Height",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: weightTextEditingController,
                  iconData: Icons.line_weight,
                  label: "Weight",
                  isVisible: false,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "Current Status",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: maritalStatusTextEditingController,
                  iconData: Icons.home,
                  label: "Marital Status",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: professionTextEditingController,
                  iconData: Icons.work,
                  label: "Profession",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: heightTextEditingController,
                  iconData: Icons.search,
                  label: "Relationship Looking for",
                  isVisible: false,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  "Background",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: nationalityTextEditingController,
                  iconData: Icons.flag,
                  label: "Nationality",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: relegionTextEditingController,
                  iconData: Icons.euro_symbol_sharp,
                  label: "Relegion",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextCard(
                  editingController: languageTextEditingController,
                  iconData: Icons.language,
                  label: "Preferred Language",
                  isVisible: false,
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account?   ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Get.back();
                    },
                    child: Text(
                      "Login Here",
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: MediaQuery.sizeOf(context).width-20,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: Center(
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
