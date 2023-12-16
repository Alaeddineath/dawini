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
  })  : startDate = startDate ?? DateTime.now(),
        endDate = endDate ??
            DateTime.now().add(Duration(
                days:
                    30)); // default end date to 30 days from now if not specified

  // Function to calculate the total duration in days
  int getDuration() {
    return endDate.difference(startDate).inDays;
  }

  Map toMap() {
    return {
      'name': this.name,
    };
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