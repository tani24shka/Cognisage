// // import 'dart:io';
// // import 'dart:math';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_storage/firebase_storage.dart';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// //
// // class NavBar extends StatefulWidget {
// //   const NavBar({Key? key}) : super(key: key);
// //
// //   @override
// //   _NavState createState() => _NavState();
// // }
// //
// //
// // class _NavState extends State<NavBar> {
// //   dynamic selectedimg;
// //   final FirebaseFirestore dp = FirebaseFirestore.instance;
// //   bool _isloading = false;
// //   String name = "";
// //   String email = "";
// //   String password = "";
// //   late Dialog _dialog;
// //
// //   get nameController => null;
// //
// //   get genderController => null;
// //
// //   get ageController => null;
// //   void _saveProfile() {
// //     String name = nameController.text;
// //     String age = ageController.text;
// //     String gender = genderController.text;
// //
// //     // Saving data to Firebase Firestore
// //     FirebaseFirestore.instance.collection('profiles').add({
// //       'name': name,
// //       'age': age,
// //       'gender': gender,
// //     });
// //
// //     // Clearing text fields after saving
// //     nameController.clear();
// //     ageController.clear();
// //     genderController.clear();
// //
// //     // You can add any additional logic here after saving the data
// //   }
// //
// //   get() async {
// //     String ? id = FirebaseAuth.instance.currentUser?.uid;
// //     var document = await dp.collection('users').doc(id).get();
// //     Map<String, dynamic> ?value = document.data();
// //     setState(() {
// //       name = value?['name'];
// //       email = value?['email'];
// //       password = value?['password'];
// //     });
// //   }
// //   final user=FirebaseAuth.instance.currentUser!;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       child: ListView(
// //         padding: EdgeInsets.zero,
// //         children: [
// //           UserAccountsDrawerHeader(
// //             accountName: Text("My Profile"),
// //             accountEmail: Text(user.email ?? ''),
// //             //   style: TextStyle(
// //             //     color: Colors.black,
// //             //     fontWeight: FontWeight.bold,
// //             //   ),
// //             // ),
// //             currentAccountPicture: selectedimg != null
// //                 ? CircleAvatar(
// //               backgroundImage: FileImage(selectedimg),
// //               radius: 10,
// //               child: Stack(
// //                 children: [
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: CircleAvatar(
// //                       child: IconButton(
// //                         onPressed: () async {
// //                           await pikimg();
// //                         },
// //                         icon: Icon(Icons.camera_alt),
// //                       ),
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             )
// //                 : CircleAvatar(
// //               backgroundImage:
// //               AssetImage("assets/images/navpfp.jpg"),
// //               radius: 10,
// //               child: Stack(
// //                 children: [
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: CircleAvatar(
// //                       child: IconButton(
// //                         onPressed: () async {
// //                           await pikimg();
// //                         },
// //                         icon: Icon(Icons.camera_alt),
// //                       ),
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             ),
// //             decoration: const BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage(
// //                   'assets/images/navbg.jpg',
// //                 ),
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //
// //           // const ListTile(
// //           //   leading: Icon(Icons.account_circle),
// //           //   title: Text('Name: WonderLearn'),
// //           // ),
// //           // const ListTile(
// //           //   leading: Icon(Icons.description),
// //           //   title: Text('Age: 5'),
// //           // ),
// //           // const ListTile(
// //           //   leading: Icon(Icons.people),
// //           //   title: Text('Gender: Female'),
// //           // ),
// //           // const Divider(),
// //           // ListTile(
// //           //   leading: const Icon(Icons.settings),
// //           //   title: const Text('Settings'),
// //           //   onTap: () {},
// //           // ),
// //           // ListTile(
// //           //   leading: const Icon(Icons.description),
// //           //   title: const Text('Policies'),
// //           //   onTap: () {},
// //           // ),
// //           // const Divider(),
// //           // ListTile(
// //           //   leading: const Icon(Icons.exit_to_app),
// //           //   title: const Text('Logout'),
// //           //   onTap: () {},
// //           // ),
// //
// //             ListTile(
// //             leading: Icon(Icons.account_circle),
// //             title: TextField(
// //             controller: nameController,
// //             decoration: InputDecoration(
// //             hintText: 'Enter Name',
// //             ),
// //             ),
// //             ),
// //             ListTile(
// //             leading: Icon(Icons.description),
// //             title: TextField(
// //             controller: ageController,
// //             decoration: InputDecoration(
// //             hintText: 'Enter Age',
// //             ),
// //             ),
// //             ),
// //             ListTile(
// //             leading: Icon(Icons.people),
// //             title: TextField(
// //             controller: genderController,
// //             decoration: InputDecoration(
// //             hintText: 'Enter Gender',
// //             ),
// //             ),
// //             ),
// //             Divider(),
// //             ListTile(
// //             leading: Icon(Icons.settings),
// //             title: Text('Settings'),
// //             onTap: () {
// //             // Add your settings functionality here
// //             },
// //             ),
// //             ListTile(
// //             leading: Icon(Icons.description),
// //             title: Text('Policies'),
// //             onTap: () {
// //             // Add your policies functionality here
// //             },
// //             ),
// //             Divider(),
// //             ListTile(
// //             leading: Icon(Icons.save),
// //             title: Text('Save Profile'),
// //             onTap: _saveProfile,
// //             ),
// //             ListTile(
// //             leading: Icon(Icons.exit_to_app),
// //             title: Text('Logout'),
// //             onTap: () {
// //             // Add your logout functionality here
// //             },
// //             ),
// //
// //
// //             ],
// //               ),
// //             );
// //           }
// //
// //   Future<void> pikimg() async {
// //     final picker = ImagePicker();
// //     final imagepicker = await picker.pickImage(source: ImageSource.gallery);
// //
// //     if (imagepicker != null) {
// //       File pickfile = File(imagepicker.path);
// //       setState(() {
// //         selectedimg = pickfile;
// //         _isloading = true;
// //       });
// //       upload();
// //     } else {
// //       // Handle if no image is picked
// //     }
// //   }
// //
// //   void upload() {
// //     Random random = new Random();
// //     int randomNumber = random.nextInt(100);
// //     // final appDocDir = await getApplicationDocumentsDirectory();
// //     // final filePath = "${appDocDir.absolute}/path/to/mountains.jpg";
// //     // final file = File(filePath);
// //
// // // Create the file metadata
// //     final metadata = SettableMetadata(contentType: "image/jpeg");
// //
// // // Create a reference to the Firebase Storage bucket
// //     final storageRef = FirebaseStorage.instance.ref();
// //
// // // Upload file and metadata to the path 'images/mountains.jpg'
// //
// //     final uploadTask = storageRef.child('images/$randomNumber.jpg').putFile(
// //         selectedimg, metadata);
// //
// // // Listen for state changes, errors, and completion of the upload.
// //     uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
// //       switch (taskSnapshot.state) {
// //         case TaskState.running:
// //           final progress =
// //               100.0 * (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
// //           if (progress == 100.0) {
// //             setState(() {
// //               _isloading = false;
// //             });
// //             var snackBar = SnackBar(
// //               content: Text('upload is $progress% complete'),
// //               backgroundColor: Colors.grey,);
// //             ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //           }
// //           else {
// //
// //           }
// //           //print("Upload is $progress% complete.");
// //           break;
// //         case TaskState.paused:
// //           print("Upload is paused.");
// //           break;
// //         case TaskState.canceled:
// //           print("Upload was canceled");
// //           break;
// //         case TaskState.error:
// //         // Handle unsuccessful uploads
// //           break;
// //         case TaskState.success:
// //         // Handle successful uploads on complete
// //         // ...
// //           break;
// //       }
// //     });
// //   }
// //   Future<void> _saveProfile() async {
// //     String name = nameController.text;
// //     String age = ageController.text;
// //     String gender = genderController.text;
// //
// //     // Saving data to Firebase Firestore
// //     String? uid = FirebaseAuth.instance.currentUser?.uid;
// //     FirebaseFirestore.instance.collection('users').doc(uid).set({
// //       'name': name,
// //       'age': age,
// //       // Add more fields as needed
// //     }).then((value) {
// //       // Data saved successfully
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Profile saved successfully')),
// //       );
// //     }).catchError((error) {
// //       // Failed to save data
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Failed to save profile: $error')),
// //       );
// //     });
// //
// //     // Clearing text fields after saving
// //     nameController.clear();
// //     ageController.clear();
// //     genderController.clear();
// //   }
// //
// // }
// //
// //
// //
// // import 'dart:io';
// // import 'dart:math';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_storage/firebase_storage.dart';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// //
// // class NavBar extends StatefulWidget {
// //   const NavBar({Key? key}) : super(key: key);
// //
// //   @override
// //   _NavState createState() => _NavState();
// // }
// //
// // class _NavState extends State<NavBar> {
// //   dynamic selectedimg;
// //   final FirebaseFirestore dp = FirebaseFirestore.instance;
// //   bool _isloading = false;
// //   String name = "";
// //   String email = "";
// //   String password = "";
// //
// //   TextEditingController nameController = TextEditingController();
// //   TextEditingController ageController = TextEditingController();
// //   TextEditingController genderController = TextEditingController();
// //
// //   void _saveProfile() async {
// //     String name = nameController.text;
// //     String age = ageController.text;
// //     String gender = genderController.text;
// //
// //     // Saving data to Firebase Firestore
// //     String? uid = FirebaseAuth.instance.currentUser?.uid;
// //     FirebaseFirestore.instance.collection('users').doc(uid).set({
// //       'name': name,
// //       'age': age,
// //       'gender': gender,
// //     }).then((value) {
// //       // Data saved successfully
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Profile saved successfully')),
// //       );
// //     }).catchError((error) {
// //       // Failed to save data
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Failed to save profile: $error')),
// //       );
// //     });
// //
// //     // Clearing text fields after saving
// //     nameController.clear();
// //     ageController.clear();
// //     genderController.clear();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       child: ListView(
// //         padding: EdgeInsets.zero,
// //         children: [
// //           UserAccountsDrawerHeader(
// //             accountName: Text("My Profile"),
// //             accountEmail: Text(FirebaseAuth.instance.currentUser?.email ?? ''),
// //             currentAccountPicture: selectedimg != null
// //                 ? CircleAvatar(
// //               backgroundImage: FileImage(selectedimg),
// //               radius: 10,
// //               child: Stack(
// //                 children: [
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: CircleAvatar(
// //                       child: IconButton(
// //                         onPressed: () async {
// //                           await pikimg();
// //                         },
// //                         icon: Icon(Icons.camera_alt),
// //                       ),
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             )
// //                 : CircleAvatar(
// //               backgroundImage: AssetImage("assets/images/navpfp.jpg"),
// //               radius: 10,
// //               child: Stack(
// //                 children: [
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: CircleAvatar(
// //                       child: IconButton(
// //                         onPressed: () async {
// //                           await pikimg();
// //                         },
// //                         icon: Icon(Icons.camera_alt),
// //                       ),
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             ),
// //             decoration: const BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage(
// //                   'assets/images/navbg.jpg',
// //                 ),
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //
// //           ListTile(
// //             leading: Icon(Icons.account_circle),
// //             title: TextField(
// //               controller: nameController,
// //               decoration: InputDecoration(
// //                 hintText: 'Enter Name',
// //               ),
// //             ),
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.description),
// //             title: TextField(
// //               controller: ageController,
// //               decoration: InputDecoration(
// //                 hintText: 'Enter Age',
// //               ),
// //             ),
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.people),
// //             title: TextField(
// //               controller: genderController,
// //               decoration: InputDecoration(
// //                 hintText: 'Enter Gender',
// //               ),
// //             ),
// //           ),
// //           Divider(),
// //           ListTile(
// //             leading: Icon(Icons.settings),
// //             title: Text('Settings'),
// //             onTap: () {
// //               // Add your settings functionality here
// //             },
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.description),
// //             title: Text('Policies'),
// //             onTap: () {
// //               // Add your policies functionality here
// //             },
// //           ),
// //           Divider(),
// //           ListTile(
// //             leading: Icon(Icons.save),
// //             title: Text('Save Profile'),
// //             onTap: _saveProfile,
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.exit_to_app),
// //             title: Text('Logout'),
// //             onTap: () {
// //               // Add your logout functionality here
// //             },
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Future<void> pikimg() async {
// //     final picker = ImagePicker();
// //     final imagepicker = await picker.pickImage(source: ImageSource.gallery);
// //
// //     if (imagepicker != null) {
// //       File pickfile = File(imagepicker.path);
// //       setState(() {
// //         selectedimg = pickfile;
// //         _isloading = true;
// //       });
// //       upload();
// //     } else {
// //       // Handle if no image is picked
// //     }
// //   }
// //
// //   void upload() {
// //     Random random = new Random();
// //     int randomNumber = random.nextInt(100);
// //
// //     final metadata = SettableMetadata(contentType: "image/jpeg");
// //     final storageRef = FirebaseStorage.instance.ref();
// //
// //     final uploadTask = storageRef.child('images/$randomNumber.jpg').putFile(
// //       selectedimg,
// //       metadata,
// //     );
// //
// //     uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
// //       switch (taskSnapshot.state) {
// //         case TaskState.running:
// //           final progress =
// //               100.0 * (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
// //           if (progress == 100.0) {
// //             setState(() {
// //               _isloading = false;
// //             });
// //             var snackBar = SnackBar(
// //               content: Text('Upload is $progress% complete'),
// //               backgroundColor: Colors.grey,
// //             );
// //             ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //           }
// //           break;
// //         case TaskState.paused:
// //           print("Upload is paused.");
// //           break;
// //         case TaskState.canceled:
// //           print("Upload was canceled");
// //           break;
// //         case TaskState.error:
// //         // Handle unsuccessful uploads
// //           break;
// //         case TaskState.success:
// //         // Handle successful uploads on complete
// //         // ...
// //           break;
// //       }
// //     });
// //   }
// // }
// // import 'dart:io';
// // import 'dart:math';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_storage/firebase_storage.dart';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// //
// // class NavBar extends StatefulWidget {
// //   const NavBar({Key? key}) : super(key: key);
// //
// //   @override
// //   _NavState createState() => _NavState();
// // }
// //
// // class _NavState extends State<NavBar> {
// //   dynamic selectedimg;
// //   final FirebaseFirestore dp = FirebaseFirestore.instance;
// //   bool _isloading = false;
// //   String name = "";
// //   String email = "";
// //   String password = "";
// //   String age = ""; // Declare age variable
// //   String gender = ""; // Declare gender variable
// //
// //   TextEditingController nameController = TextEditingController();
// //   TextEditingController ageController = TextEditingController();
// //   TextEditingController genderController = TextEditingController();
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     // Load user profile data when widget is initialized
// //     loadingUserProfile();
// //     loadUserProfile();
// //   }
// //
// //   void loadingUserProfile() async {
// //     // Retrieve the current user's profile data from Firestore
// //     String? uid = FirebaseAuth.instance.currentUser?.uid;
// //     var document = await dp.collection('users').doc(uid).get();
// //     if (document.exists) {
// //       // If user's profile data exists, update the text controllers with the data
// //       setState(() {
// //         name = document['name'];
// //         age = document['age'];
// //         gender = document['gender'];
// //       });
// //       nameController.text = name;
// //       ageController.text = age;
// //       genderController.text = gender;
// //     }
// //   }
// //
// //   void _saveProfile() async {
// //     String name = nameController.text;
// //     String age = ageController.text;
// //     String gender = genderController.text;
// //
// //     // Saving data to Firebase Firestore
// //     String? uid = FirebaseAuth.instance.currentUser?.uid;
// //     FirebaseFirestore.instance.collection('users').doc(uid).set({
// //       'name': name,
// //       'age': age,
// //       'gender': gender,
// //     }).then((value) {
// //       // Data saved successfully
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Profile saved successfully')),
// //       );
// //     }).catchError((error) {
// //       // Failed to save data
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text('Failed to save profile: $error')),
// //       );
// //     });
// //
// //     // Clearing text fields after saving
// //     nameController.clear();
// //     ageController.clear();
// //     genderController.clear();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       child: ListView(
// //         padding: EdgeInsets.zero,
// //         children: [
// //           UserAccountsDrawerHeader(
// //             accountName: Text(name), // Display user's name
// //             accountEmail: Text(FirebaseAuth.instance.currentUser?.email ?? ''),
// //             currentAccountPicture: selectedimg != null
// //                 ? CircleAvatar(
// //               backgroundImage: FileImage(selectedimg),
// //               radius: 10,
// //               child: Stack(
// //                 children: [
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: CircleAvatar(
// //                       child: IconButton(
// //                         onPressed: () async {
// //                           await pikimg();
// //                         },
// //                         icon: Icon(Icons.camera_alt),
// //                       ),
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             )
// //                 : CircleAvatar(
// //               backgroundImage: AssetImage("assets/images/navpfp.jpg"),
// //               radius: 10,
// //               child: Stack(
// //                 children: [
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: CircleAvatar(
// //                       child: IconButton(
// //                         onPressed: () async {
// //                           await pikimg();
// //                         },
// //                         icon: Icon(Icons.camera_alt),
// //                       ),
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             ),
// //             decoration: const BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage(
// //                   'assets/images/navbg.jpg',
// //                 ),
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //
// //           ListTile(
// //             leading: Icon(Icons.account_circle),
// //             title: TextField(
// //               controller: nameController,
// //               decoration: InputDecoration(
// //                 hintText: 'Enter Name',
// //               ),
// //             ),
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.description),
// //             title: TextField(
// //               controller: ageController,
// //               decoration: InputDecoration(
// //                 hintText: 'Enter Age',
// //               ),
// //             ),
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.people),
// //             title: TextField(
// //               controller: genderController,
// //               decoration: InputDecoration(
// //                 hintText: 'Enter Gender',
// //               ),
// //             ),
// //           ),
// //           Divider(),
// //           ListTile(
// //             leading: Icon(Icons.settings),
// //             title: Text('Settings'),
// //             onTap: () {
// //               // Add your settings functionality here
// //             },
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.description),
// //             title: Text('Policies'),
// //             onTap: () {
// //               // Add your policies functionality here
// //             },
// //           ),
// //           Divider(),
// //           ListTile(
// //             leading: Icon(Icons.save),
// //             title: Text('Save Profile'),
// //             onTap: _saveProfile,
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.exit_to_app),
// //             title: Text('Logout'),
// //             onTap: () {
// //               // Add your logout functionality here
// //             },
// //           ),
// //         ],
// //       ),
// //     );
// //   }
//
// //   Future<void> pikimg() async {
// //     final picker = ImagePicker();
// //     final imagepicker = await picker.pickImage(source: ImageSource.gallery);
// //
// //     if (imagepicker != null) {
// //       File pickfile = File(imagepicker.path);
// //       setState(() {
// //         selectedimg = pickfile;
// //         _isloading = true;
// //       });
// //       upload();
// //     } else {
// //       // Handle if no image is picked
// //     }
// //   }
// //
// //   void upload() {
// //     Random random = new Random();
// //     int randomNumber = random.nextInt(100);
// //
// //     final metadata = SettableMetadata(contentType: "image/jpeg");
// //     final storageRef = FirebaseStorage.instance.ref();
// //
// //     final uploadTask = storageRef.child('images/$randomNumber.jpg').putFile(
// //       selectedimg,
// //       metadata,
// //     );
// //
// //     uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
// //       switch (taskSnapshot.state) {
// //         case TaskState.running:
// //           final progress =
// //               100.0 * (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
// //           if (progress == 100.0) {
// //             setState(() {
// //               _isloading = false;
// //             });
// //             var snackBar = SnackBar(
// //               content: Text('Upload is $progress% complete'),
// //               backgroundColor: Colors.grey,
// //             );
// //             ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //           }
// //           break;
// //         case TaskState.paused:
// //           print("Upload is paused.");
// //           break;
// //         case TaskState.canceled:
// //           print("Upload was canceled");
// //           break;
// //         case TaskState.error:
// //         // Handle unsuccessful uploads
// //           break;
// //         case TaskState.success:
// //         // Handle successful uploads on complete
// //         // ...
// //           break;
// //       }
// //     });
// //   }
// // }
// //   Future<void> pikimg() async {
// //     final picker = ImagePicker();
// //     final imagepicker = await picker.pickImage(source: ImageSource.gallery);
// //
// //     if (imagepicker != null) {
// //       File pickfile = File(imagepicker.path);
// //       setState(() {
// //         selectedimg = pickfile;
// //         _isloading = true;
// //       });
// //       upload(pickfile); // Pass the picked file to the upload function
// //     } else {
// //       // Handle if no image is picked
// //     }
// //   }
// //
// //   void upload(File imageFile) {
// //     String? uid = FirebaseAuth.instance.currentUser?.uid;
// //     if (uid != null) {
// //       Random random = new Random();
// //       int randomNumber = random.nextInt(100);
// //
// //       final metadata = SettableMetadata(contentType: "image/jpeg");
// //       final storageRef = FirebaseStorage.instance.ref();
// //
// //       final uploadTask = storageRef
// //           .child('images/$uid/$randomNumber.jpg') // Use user's ID in the image path
// //           .putFile(
// //         imageFile,
// //         metadata,
// //       );
// //
// //       uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
// //         switch (taskSnapshot.state) {
// //           case TaskState.running:
// //             final progress = 100.0 *
// //                 (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
// //             if (progress == 100.0) {
// //               setState(() {
// //                 _isloading = false;
// //               });
// //               var snackBar = SnackBar(
// //                 content: Text('Upload is $progress% complete'),
// //                 backgroundColor: Colors.grey,
// //               );
// //               ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //             }
// //             break;
// //           case TaskState.paused:
// //             print("Upload is paused.");
// //             break;
// //           case TaskState.canceled:
// //             print("Upload was canceled");
// //             break;
// //           case TaskState.error:
// //           // Handle unsuccessful uploads
// //             break;
// //           case TaskState.success:
// //           // Handle successful uploads on complete
// //           // ...
// //             break;
// //         }
// //       });
// //     }
// //   }}
//   Future<void> pikimg() async {
//     final picker = ImagePicker();
//     final imagepicker = await picker.pickImage(source: ImageSource.gallery);
//
//     if (imagepicker != null) {
//       File pickfile = File(imagepicker.path);
//       setState(() {
//         selectedimg = pickfile;
//         _isloading = true;
//       });
//       upload(pickfile); // Pass the picked file to the upload function
//     } else {
//       // Handle if no image is picked
//     }
//   }
//
//   void upload(File imageFile) {
//     String? uid = FirebaseAuth.instance.currentUser?.uid;
//     if (uid != null) {
//       Random random = new Random();
//       int randomNumber = random.nextInt(100);
//
//       final metadata = SettableMetadata(contentType: "image/jpeg");
//       final storageRef = FirebaseStorage.instance.ref();
//
//       final uploadTask = storageRef
//           .child(
//           'images/$uid/$randomNumber.jpg') // Use user's ID in the image path
//           .putFile(
//         imageFile,
//         metadata,
//       );
//
//       uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
//         switch (taskSnapshot.state) {
//           case TaskState.running:
//             final progress = 100.0 *
//                 (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
//             if (progress == 100.0) {
//               setState(() {
//                 _isloading = false;
//               });
//               var snackBar = SnackBar(
//                 content: Text('Upload is $progress% complete'),
//                 backgroundColor: Colors.grey,
//               );
//               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//             }
//             break;
//           case TaskState.paused:
//             print("Upload is paused.");
//             break;
//           case TaskState.canceled:
//             print("Upload was canceled");
//             break;
//           case TaskState.error:
//           // Handle unsuccessful uploads
//             break;
//           case TaskState.success:
//           // Handle successful uploads on complete
//           // ...
//             break;
//         }
//       });
//     }
//   }
//
//   Future<void> loadUserProfile() async {
//     String? uid = FirebaseAuth.instance.currentUser?.uid;
//     if (uid != null) {
//       var document = await dp.collection('users').doc(uid).get();
//       if (document.exists) {
//         setState(() {
//           name = document['name'];
//           age = document['age'];
//           gender = document['gender'];
//         });
//
//         // Load user's profile image using their ID
//         final storageRef = FirebaseStorage.instance.ref().child('images/$uid');
//         final profileImageRef = storageRef.child('profile.jpg');
//         final imageUrl = await profileImageRef.getDownloadURL();
//
//         // Update the UI with the fetched profile image
//         setState(() {
//           selectedimg = NetworkImage(imageUrl);
//         });
//
//         // Update text controllers with profile data
//         nameController.text = name;
//         ageController.text = age;
//         genderController.text = gender;
//       }
//     }
//   }
// }
import 'dart:io';
import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:werocks/policies.dart';

import 'login.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);


  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<NavBar> {
  dynamic selectedimg;
  final FirebaseFirestore dp = FirebaseFirestore.instance;
  bool _isloading = false;
  String name = "";
  String email = "";
  String password = "";
  String age = ""; // Declare age variable
  String gender = ""; // Declare gender variable

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  @override

  void initState() {
    super.initState();
    // Load user profile data when widget is initialized
    loadUserProfile();
  }

  Future<void> loadUserProfile() async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid != null) {
      var document = await dp.collection('users').doc(uid).get();
      if (document.exists) {
        setState(() {
          name = document['name'];
          age = document['age'];
          gender = document['gender'];
        });

        // Load user's profile image using their ID
        final storageRef = FirebaseStorage.instance.ref().child('images/$uid');
        final profileImageRef = storageRef.child('profile.jpg');
        final imageUrl = await profileImageRef.getDownloadURL();

        // Update the UI with the fetched profile image
        setState(() {
          selectedimg = NetworkImage(imageUrl);
        });

        // Update text controllers with profile data
        nameController.text = name;
        ageController.text = age;
        genderController.text = gender;
      }
    }
  }

  void _saveProfile() async {
    String name = nameController.text;
    String age = ageController.text;
    String gender = genderController.text;

    // Saving data to Firebase Firestore
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    FirebaseFirestore.instance.collection('users').doc(uid).set({
      'name': name,
      'age': age,
      'gender': gender,
    }).then((value) {
      // Data saved successfully
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Profile saved successfully')),
      );
    }).catchError((error) {
      // Failed to save data
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save profile: $error')),
      );
    });

    // Clearing text fields after saving
    nameController.clear();
    ageController.clear();
    genderController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(name), // Display user's name
            accountEmail: Text(FirebaseAuth.instance.currentUser?.email ?? ''),
            currentAccountPicture: selectedimg != null
                ? CircleAvatar(
              backgroundImage: selectedimg,
              radius: 10,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      child: IconButton(
                        onPressed: () async {
                          await pikimg();
                        },
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                  )
                ],
              ),
            )
                : CircleAvatar(
              backgroundImage: AssetImage("assets/images/navpfp.jpg"),
              radius: 10,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      child: IconButton(
                        onPressed: () async {
                          await pikimg();
                        },
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                  )
                ],
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/navimg1.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.account_circle),
            title: TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter Name',
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: 'Enter Age',
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: TextField(
              controller: genderController,
              decoration: InputDecoration(
                hintText: 'Enter Gender',
              ),
            ),
          ),
          SizedBox(height: 26),
          Divider(),
          // ListTile(
          //   leading: Icon(Icons.settings),
          //   title: Text('Settings'),
          //   onTap: () {
          //     // Add your settings functionality here
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () {
              // Add your policies functionality here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliciesPage()),
              );
            },
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.save),
            title: Text('Save Profile'),
            onTap: _saveProfile,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              logoutAndNavigateToLogin(); // Call logout function when tapped
            },
          ),
          Divider(),
        ],
      ),
    );
  }
  void logoutAndNavigateToLogin() {
    Navigator.pushReplacementNamed(context, 'login'); // Navigate to the login page
  }

  Future<void> pikimg() async {
    final picker = ImagePicker();
    final imagepicker = await picker.pickImage(source: ImageSource.gallery);

    if (imagepicker != null) {
      File pickfile = File(imagepicker.path);
      setState(() {
        selectedimg = FileImage(pickfile); // Use FileImage to display the picked file
        _isloading = true;
      });
      upload(pickfile); // Pass the picked file to the upload function
    } else {
      // Handle if no image is picked
    }
  }
  void upload(File imageFile) {
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid != null) {
      Random random = new Random();
      int randomNumber = random.nextInt(100);

      final metadata = SettableMetadata(contentType: "image/jpeg");
      final storageRef = FirebaseStorage.instance.ref();

      final uploadTask = storageRef
          .child(
          'images/$uid/profile.jpg') // Use user's ID in the image path and set the image name to "profile.jpg"
          .putFile(
        imageFile,
        metadata,
      );

      uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
        switch (taskSnapshot.state) {
          case TaskState.running:
            final progress = 100.0 *
                (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
            if (progress == 100.0) {
              setState(() {
                _isloading = false;
              });
              var snackBar = SnackBar(
                content: Text('Upload is $progress% complete'),
                backgroundColor: Colors.grey,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            break;
          case TaskState.paused:
            print("Upload is paused.");
            break;
          case TaskState.canceled:
            print("Upload was canceled");
            break;
          case TaskState.error:
          // Handle unsuccessful uploads
            break;
          case TaskState.success:
          // Handle successful uploads on complete
          // ...
            break;
        }
      });
    }
  }
}
