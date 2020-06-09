import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: UploadVideo(),
      ),
    );
  }
}

class UploadVideo extends StatefulWidget {
  @override
  _UploadVideoState createState() => _UploadVideoState();
}

class _UploadVideoState extends State<UploadVideo> {
  bool terms = false;
  bool terms2 = false;
  bool terms3 = false;
  bool terms4 = false;
  bool saveAttempt = false;
  String selectedValue,selectedValue2;
  final titleController = TextEditingController();
  final synController = TextEditingController();
  final pHNameController = TextEditingController();
  final pHEmail = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final List<DropdownMenuItem> items = [];
  final List<DropdownMenuItem> items2 = [];
  final List<String> countries = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antigua &amp; Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bosnia &amp; Herzegovina",
    "Botswana",
    "Brazil",
    "British Virgin Islands",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Cape Verde",
    "Cayman Islands",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Congo",
    "Cook Islands",
    "Costa Rica",
    "Cote D Ivoire",
    "Croatia",
    "Cruise Ship",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Estonia",
    "Ethiopia",
    "Falkland Islands",
    "Faroe Islands",
    "Fiji",
    "Finland",
    "France",
    "French Polynesia",
    "French West Indies",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Isle of Man",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kuwait",
    "Kyrgyz Republic",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macau",
    "Macedonia",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Namibia",
    "Nepal",
    "Netherlands",
    "Netherlands Antilles",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Norway",
    "Oman",
    "Pakistan",
    "Palestine",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Reunion",
    "Romania",
    "Russia",
    "Rwanda",
    "Saint Pierre &amp; Miquelon",
    "Samoa",
    "San Marino",
    "Satellite",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "South Africa",
    "South Korea",
    "Spain",
    "Sri Lanka",
    "St Kitts &amp; Nevis",
    "St Lucia",
    "St Vincent",
    "St. Lucia",
    "Sudan",
    "Suriname",
    "Swaziland",
    "Sweden",
    "Switzerland",
    "Syria",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Timor L'Este",
    "Togo",
    "Tonga",
    "Trinidad &amp; Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks &amp; Caicos",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "Uruguay",
    "Uzbekistan",
    "Venezuela",
    "Vietnam",
    "Virgin Islands (US)",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];
  final List<String> languages = [
    "Hindi",
    "Urdu",
    "Bangla",
    "Chinese",
    "Sanskrit",
    "Vietnamese"
  ];
  final listOfTypes = ["Type A", "Type B"];
  String dropdownValue = 'Type A';
  String dropdownValue2 = 'Type A';


  @override
  void initState() {
    for (var i in countries) {
      items.add(DropdownMenuItem(
        child: Text(i),
        value: i,
      ));
    }
    for (var i in languages) {
      items2.add(DropdownMenuItem(
        child: Text(i),
        value: i,
      ));
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          shrinkWrap: true,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      labelText: 'Title',
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                    onChanged: (textValue) {
                      setState(() {});
                    },
                    autovalidate: saveAttempt,
                    validator: (title) {
                      if (title.isEmpty) {
                        return 'This field cannot be blank';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SearchableDropdown(
                    menuConstraints: BoxConstraints(maxHeight: 500),
                    dialogBox: false,
                    label: Text(
                      'Country',
                      style: TextStyle(color: Colors.white.withOpacity(0.7)),
                    ),
                    value: selectedValue,
                    style: TextStyle(color: Colors.white),
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    items: items,
                    doneButton: "Done",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: DropdownButtonFormField(
                      icon: Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                      hint: Text(
                        'Type',
                        style: TextStyle(color: Colors.white.withOpacity(0.7)),
                      ),
                      style: TextStyle(color: Colors.grey),
                      items: listOfTypes.map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Select type';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SearchableDropdown(
                    menuConstraints: BoxConstraints(maxHeight: 500),
                    dialogBox: false,
                    label: Text(
                      'Language',
                      style: TextStyle(color: Colors.white.withOpacity(0.7)),
                    ),
                    value: selectedValue2,
                    style: TextStyle(color: Colors.white),
                    isExpanded: true,
                    icon: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                    onChanged: (value) {
                      setState(() {
                        selectedValue2 = value;
                      });
                    },
                    items: items2,
                    doneButton: "Done",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: synController,
                    minLines: 5,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      labelText: 'Synopsis(Mandatory)',
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                    onChanged: (textValue) {
                      setState(() {});
                    },
                    autovalidate: saveAttempt,
                    validator: (title) {
                      if (title.isEmpty) {
                        return 'This field cannot be blank';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CheckboxListTile(
                    checkColor: Colors.black,
                    activeColor: Colors.white,

                    title: Text(
                      "No nudity is allowed, attempts will result in legal action.",
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                    value: terms,
                    onChanged: (newValue) {
                      setState(() {
                        terms = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                  CheckboxListTile(
                    checkColor: Colors.black,
                    activeColor: Colors.white,

                    title: Text(
                      "My content is original.",
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                    value: terms2,
                    onChanged: (newValue) {
                      setState(() {
                        terms2 = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                  CheckboxListTile(
                    checkColor: Colors.black,
                    activeColor: Colors.white,

                    title: Text(
                      "I agree to show my content to entire community.",
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                    value: terms3,
                    onChanged: (newValue) {
                      setState(() {
                        terms3 = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                  CheckboxListTile(
                    checkColor: Colors.black,
                    activeColor: Colors.white,

                    title: Text(
                      "My vision is to provide free content to a large audience.",
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                    value: terms4,
                    onChanged: (newValue) {
                      setState(() {
                        terms4 = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Upload Thumbnail',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Upload thumbnail"),
                        backgroundColor: Colors.green,
                      ));
                    },
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(100),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Upload Video',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Size should be \nless than 12 MB',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Upload video"),
                        backgroundColor: Colors.green,
                      ));
                    },
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(100),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField(
                    icon: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                    hint: Text(
                      'Production House',
                      style: TextStyle(color: Colors.white.withOpacity(0.3)),
                    ),
                    style: TextStyle(color: Colors.grey),
                    items: listOfTypes.map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue2 = newValue;
                      });
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Select house';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: pHNameController,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Production House Name',
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                    onChanged: (textValue) {
                      setState(() {});
                    },
                    autovalidate: saveAttempt,
                    validator: (title) {
                      if (title.isEmpty) {
                        return 'This field cannot be blank';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: pHEmail,
                    onChanged: (textValue) {
                      setState(() {});
                    },
                    autovalidate: saveAttempt,
                    validator: (emailValue) {
                      if (emailValue.isEmpty) {
                        return 'This field cannot be blank';
                      }
                      RegExp regExp = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (regExp.hasMatch(emailValue)) {
                        return null;
                      }

                      return 'Please enter a valid email';
                    },
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Production House Email',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        saveAttempt = true;
                      });
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();
                        print(
                            "Title: ${titleController.text}\nCountry : $selectedValue\nType: $dropdownValue\nLanguage: $selectedValue2\nSynopsis: ${synController.text}\nProduction House: $dropdownValue2\nProduction House name: ${pHNameController.text}\nProduction House Email: ${pHEmail.text}");
                      }
                    },
                    child: Card(
                      elevation: 7,
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontFamily: 'Varela_Round',
                            color: Colors.white,
                            fontSize: 21,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
