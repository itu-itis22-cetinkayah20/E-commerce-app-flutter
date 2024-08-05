import 'package:intl/intl.dart';

class TFormatter{
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatDate(DateTime? date) {
    date??= DateTime.now(); //date değeri girilmezse şu anki tarihi alır.
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  // static String formatTime(DateTime date) {
  //   return DateFormat.jm().format(date);
  // }

  // static String formatDateTime(DateTime date) {
  //   return DateFormat.yMMMd().add_jm().format(date);
  // }
  static String formatPhoneNumber(String phoneNumber) {
    // Assuming 10 digit US phone number format : (123) 456- 7890
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
   } else if(phoneNumber.length == 11){
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
   } else {
     return phoneNumber;
   }
}
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit caracters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    //Extract the country code from the digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting 
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while(i < digitsOnly.length){
      int grouplength = 2;
      if(i ==0 && countryCode == '+1'){
        grouplength = 3;
      }

      int end = i + grouplength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if(end < digitsOnly.length){
        formattedNumber.write(' ');
      }
      i = end;
    }
    return formattedNumber.toString();
  }

}