// Row(
// children: [
// Expanded(
// child: Icon(
// Icons.person,
// size: 35,
// ),
// ),
// Expanded(
// flex: 4,
// child: TextFormField(
// onFieldSubmitted: (val) {
// setState(() {
// Globals.namec.text = val;
// });
// },
// validator: (val) {
// if (val!.isEmpty) {
// return "Plese Enter Name";
// }
// },
// controller: Globals.namec,
// onChanged: (val) {
// setState(() {
// Globals.name = val;
// });
// },
// decoration: InputDecoration(
// hintText: "Name",
// hintStyle: TextStyle(
// color: Colors.grey,
// ),
// ),
// ),
// ),
// ],
// ),
// Row(
// children: [
// Expanded(
// child: Icon(
// Icons.email,
// size: 35,
// ),
// ),
// Expanded(
// flex: 4,
// child: TextFormField(
// onFieldSubmitted: (val) {
// setState(() {
// Globals.emailc.text = val;
// });
// },
// validator: (val) {
// if (val!.isEmpty) {
// return "Plese Enter Email";
// }
// },
// controller: Globals.emailc,
// onChanged: (val) {
// setState(() {
// Globals.email = val;
// });
// },
// keyboardType: TextInputType.emailAddress,
// decoration: InputDecoration(
// hintText: "Email",
// hintStyle: TextStyle(
// color: Colors.grey,
// ),
// ),
// ),
// ),
// ],
// ),
// Row(
// children: [
// Expanded(
// child: Icon(
// Icons.phone_android,
// size: 35,
// ),
// ),
// Expanded(
// flex: 4,
// child: TextFormField(
// onFieldSubmitted: (val) {
// setState(() {
// Globals.numberc.text = val;
// });
// },
// validator: (val) {
// if (val!.isEmpty) {
// return "Plese Enter Number";
// }
// },
// controller: Globals.numberc,
// onChanged: (val) {
// setState(() {
// Globals.number = val;
// });
// },
// keyboardType: TextInputType.number,
// decoration: InputDecoration(
// hintText: "Phone",
// hintStyle: TextStyle(
// color: Colors.grey,
// ),
// ),
// ),
// ),
// ],
// ),
// Row(
// children: [
// Expanded(
// child: Icon(
// Icons.location_on,
// size: 35,
// ),
// ),
// Expanded(
// flex: 4,
// child: TextFormField(
// onFieldSubmitted: (val) {
// setState(() {
// Globals.address1c.text = val;
// });
// },
// validator: (val) {
// if (val!.isEmpty) {
// return "Plese Enter Address";
// }
// },
// controller: Globals.address1c,
// onChanged: (val) {
// setState(() {
// Globals.address1 = val;
// });
// },
// decoration: InputDecoration(
// hintText: "Address(Street,building)",
// hintStyle: TextStyle(
// color: Colors.grey,
// ),
// ),
// ),
// ),
// ],
// ),
// Row(
// children: [
// Expanded(
// child: Container(),
// ),
// Expanded(
// flex: 4,
// child: TextFormField(
// onFieldSubmitted: (val) {
// setState(() {
// Globals.address2c.text = val;
// });
// },
// validator: (val) {
// if (val!.isEmpty) {
// return "Plese Enter Address1";
// }
// },
// controller: Globals.address2c,
// onChanged: (val) {
// setState(() {
// Globals.address2 = val;
// });
// },
// decoration: InputDecoration(
// hintText: "Address2",
// hintStyle: TextStyle(
// color: Colors.grey,
// ),
// ),
// ),
// ),
// ],
// ),
// Row(
// children: [
// Expanded(
// child: Container(),
// ),
// Expanded(
// flex: 4,
// child: TextFormField(
// onFieldSubmitted: (val) {
// setState(() {
// Globals.address3c.text = val;
// });
// },
// validator: (val) {
// if (val!.isEmpty) {
// return "Plese Enter Address";
// }
// },
// controller: Globals.address3c,
// onChanged: (val) {
// setState(() {
// Globals.address3 = val;
// });
// },
// decoration: InputDecoration(
// hintText: "Address3",
// hintStyle: TextStyle(
// color: Colors.grey,
// ),
// ),
// ),
// ),
// ],
// ),
