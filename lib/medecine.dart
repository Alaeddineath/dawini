class Medecine {
  String name;
  String form;
  String frequency;
  String time;
  int dosage;
  DateTime startDate;
  DateTime endDate;

  Medecine({
    this.name = '',
    this.form = '',
    this.frequency = '',
    this.time = '',
    this.dosage = 0,
    DateTime? startDate,
    DateTime? endDate,
  }) : startDate = startDate ?? DateTime.now(),
       endDate = endDate ?? DateTime.now().add(Duration(days: 30)); // default end date to 30 days from now if not specified

  // Function to calculate the total duration in days
  int getDuration() {
    return endDate.difference(startDate).inDays;
  }


  void addDay() {
   endDate = endDate.add(Duration(days: 1));
  }

  // Function to calculate the number of days left
  int getDaysLeft() {
    final now = DateTime.now();
    if (now.isBefore(endDate)) {
      return endDate.difference(now).inDays;
    } else {
      return 0; // No days left if the current date is past the end date
    }
  }
}

// Example usage
List<Medecine> medecineList = [
  Medecine(
    name: 'Ibuprofen',
    form: 'Tablet',
    frequency: 'Twice a day',
    time: '08:30 AM & 08:30 PM',
    dosage: 200,
    startDate: DateTime(2023, 1, 1),
    endDate: DateTime(2024, 1, 31),
  ),
  Medecine(
    name: 'Acetaminophen',
    form: 'Capsule',
    frequency: 'Once a day',
    time: '09:00 AM',
    dosage: 500,
    startDate: DateTime(2023, 2, 1),
    endDate: DateTime(2024, 2, 28),
  ),
  Medecine(
    name: 'Amoxicillin',
    form: 'Tablet',
    frequency: 'Three times a day',
    time: '08:00 AM, 02:00 PM & 08:00 PM',
    dosage: 250,
    startDate: DateTime(2023, 3, 1),
    endDate: DateTime(2024, 3, 15),
  ),
  Medecine(
    name: 'Cetirizine',
    form: 'Tablet',
    frequency: 'Once a day',
    time: '07:00 PM',
    dosage: 10,
    startDate: DateTime(2023, 4, 1),
    endDate: DateTime(2024, 4, 30),
  ),
  Medecine(
    name: 'Metformin',
    form: 'Extended-release Tablet',
    frequency: 'Once a day',
    time: 'With evening meal',
    dosage: 500,
    startDate: DateTime(2023, 5, 1),
    endDate: DateTime(2024, 6, 1),
  ),
  Medecine(
    name: 'Lisinopril',
    form: 'Tablet',
    frequency: 'Once a day',
    time: 'Morning',
    dosage: 10,
    startDate: DateTime(2023, 6, 1),
    endDate: DateTime(2024, 7, 1),
  ),
  Medecine(
    name: 'Amlodipine',
    form: 'Tablet',
    frequency: 'Once a day',
    time: 'Morning',
    dosage: 5,
    startDate: DateTime(2023, 7, 1),
    endDate: DateTime(2024, 8, 1),
  ),
  // Additional instances can be added here
];