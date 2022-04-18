// ignore_for_file: prefer_const_constructors

// Route Names
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../views/auth/sign_up_screen.dart';
import '../views/auth/verification_screen.dart';
import '../views/auth/welcome_screen.dart';
import '../views/bottomNavController/bottom_nav_controller.dart';
import '../views/bottomNavController/main_home/book_bundle/available_flights.dart';
import '../views/bottomNavController/main_home/book_bundle/book_bundle.dart';
import '../views/bottomNavController/main_home/book_bundle/book_bundle_checkout.dart';
import '../views/bottomNavController/main_home/book_bundle/book_hotel.dart';
import '../views/bottomNavController/main_home/driver_profile_screen.dart';
import '../views/bottomNavController/main_home/express/dropoff_location.dart';
import '../views/bottomNavController/main_home/express/express_screen.dart';
import '../views/bottomNavController/main_home/express/reciever_screen.dart';
import '../views/bottomNavController/main_home/express/sender_screen.dart';
import '../views/bottomNavController/main_home/fly/available_flights.dart';
import '../views/bottomNavController/main_home/fly/booking_order.dart';
import '../views/bottomNavController/main_home/fly/flight_booking.dart';
import '../views/bottomNavController/main_home/fly/flight_booking_cancellation.dart';
import '../views/bottomNavController/main_home/fly/fly_filter.dart';
import '../views/bottomNavController/main_home/fly/fly_privacy_policy.dart';
import '../views/bottomNavController/main_home/fly/my_booking.dart';
import '../views/bottomNavController/main_home/gift_ride_screen.dart';
import '../views/bottomNavController/main_home/place/booking_cancel.dart';
import '../views/bottomNavController/main_home/place/find_your_stay.dart';
import '../views/bottomNavController/main_home/place/hotel_search.dart';
import '../views/bottomNavController/main_home/place/place_booking_order.dart';
import '../views/bottomNavController/main_home/place/place_checkout.dart';
import '../views/bottomNavController/main_home/place/place_filter.dart';
import '../views/bottomNavController/main_home/place/place_home.dart';
import '../views/bottomNavController/main_home/place/place_privacy_policy.dart';
import '../views/bottomNavController/main_home/rental/find_cars.dart';
import '../views/bottomNavController/main_home/rental/rent_booking.dart';
import '../views/bottomNavController/main_home/rental/rent_car.dart';
import '../views/bottomNavController/main_home/ride/pick_a_ride/add_points.dart';
import '../views/bottomNavController/main_home/ride/pick_a_ride/pickup_screen.dart';
import '../views/bottomNavController/settings/change_password.dart';
import '../views/bottomNavController/settings/help&support.dart';
import '../views/bottomNavController/settings/notification_settings.dart';
import '../views/splash/splash_screen.dart';

const String splash = "/Splash-Screen";
const String signup = "/Signup-Screen";
const String otp = "/Verification-Screen";
const String welcome = "/Welcome-Screen";
const String bottomnav = "/Bottom-Nav-Controller";
const String giftride = "/Gift-Ride-Screen";
const String driverprofile = "/Driver-Profile-Screen";
const String flightBooking = "/flight-Booking-Screen";
const String availableFlights = "/Available-Flights-Screen";
const String flyPrivacyPolicy = "/Fly-Privacy-Policy-Screen";
const String flyFilter = "/Fly-Filter-Screen";
const String myBooking = "/My-Booking-Screen";
const String flightBookingCencalation = "/Flight-Booking-Cencalation-Screen";
const String bookingOrder = "/Booking-Order-Screen";
const String pickUpScreens = "/pick-Up-Screens";
const String addPoints = "/add-Points";
const String express = "/Qwiqio-Express";
const String sender = "/Qwiqio-Sender";
const String dropofLocation = "/Dropof-Location";
const String reciever = "/Qwiqio-Reciever";
const String bookBundle = "/Book-Bundle";
const String notificationSettings = "/Notification-Settings";
const String changePassword = "/Change-Password";
const String helpSupport = "/Help-Support";
const String bookFlightBooking = "/Book-Flight-Booking-Screen";
const String homePlace = "/Home-Place";
const String bookHotel = "/Book-Hotel";
const String hotelSearch = "/Hotel-Search";
const String findStay = "/Find-Stay";
const String placeFilter = "/Place-Filter";
const String placeCheckout = "/Place-Checkout";
const String bookingCancellation = "/Booking-Cancellation";
const String placeBookingOrder = "/Place-Booking-Order";
const String placePrivacyPolicy = "/Place-Privacy-Policy";
const String findCars = "/Find-Cars";
const String rentbooking = "/Rent-Booking";
const String bundleCheckout = "/Book-Bundle-Checkout";
const String retACars = "/Rent-A-Cars";

// Control our page route flow
List<GetPage> getPages = [
  GetPage(
      name: splash,
      page: () => SplashScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: signup,
      page: () => SignupScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: otp,
      page: () => VerificationScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: welcome,
      page: () => WelcomeScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: bottomnav,
      page: () => BottomNavController(),
      transition: Transition.leftToRight),
  GetPage(
    name: giftride,
    page: () => GiftRideScreen(),
  ),
  GetPage(
    name: driverprofile,
    page: () => DriverProfileScreen(),
  ),
  GetPage(
    name: flightBooking,
    page: () => FlightBooking(),
  ),
  GetPage(
    name: availableFlights,
    page: () => AvailableFlights(),
  ),
  GetPage(
    name: flyPrivacyPolicy,
    page: () => FlyPrivacyPolicy(),
  ),
  GetPage(
    name: flyFilter,
    page: () => FlyFilter(),
  ),
  GetPage(
    name: myBooking,
    page: () => MyBooking(),
  ),
  GetPage(
    name: flightBookingCencalation,
    page: () => FlightBookingCancellation(),
  ),
  GetPage(
    name: bookingOrder,
    page: () => BookingOrder(),
  ),
  GetPage(
    name: pickUpScreens,
    page: () => PickUpScreen(),
  ),
  GetPage(
    name: addPoints,
    page: () => AddPoints(),
  ),
  GetPage(
    name: express,
    page: () => ExpressScreen(),
  ),
  GetPage(
    name: sender,
    page: () => SenderScreen(),
  ),
  GetPage(
    name: dropofLocation,
    page: () => DropOffLocation(),
  ),
  GetPage(
    name: reciever,
    page: () => RecieverScreen(),
  ),
  GetPage(
    name: bookBundle,
    page: () => BookBundleScreen(),
  ),
  GetPage(
    name: notificationSettings,
    page: () => NotificationSettings(),
  ),
  GetPage(
    name: changePassword,
    page: () => ChangePassword(),
  ),
  GetPage(
    name: helpSupport,
    page: () => HelpSupport(),
  ),
  GetPage(
    name: bookFlightBooking,
    page: () => BookBundleFlightBooking(),
  ),
  GetPage(
    name: homePlace,
    page: () => PlaceHome(),
  ),
  GetPage(
    name: bookHotel,
    page: () => BookHotel(),
  ),
  GetPage(
    name: hotelSearch,
    page: () => HotelSearch(),
  ),
  GetPage(
    name: findStay,
    page: () => FindYourStay(),
  ),
  GetPage(
    name: placeFilter,
    page: () => PlaceFilter(),
  ),
  GetPage(
    name: placeCheckout,
    page: () => PlaceCheckout(),
  ),
  GetPage(
    name: bookingCancellation,
    page: () => BookingCancellation(),
  ),
  GetPage(
    name: placeBookingOrder,
    page: () => PlaceBookingOrder(),
  ),
  GetPage(
    name: placePrivacyPolicy,
    page: () => PlacePrivacyPolicy(),
  ),
  GetPage(
    name: findCars,
    page: () => FindCars(),
  ),
  GetPage(
    name: rentbooking,
    page: () => RentBooking(),
  ),
  GetPage(
    name: bundleCheckout,
    page: () => BookBundleCheckout(),
  ),
  GetPage(
    name: retACars,
    page: () => RentACar(),
  ),
];