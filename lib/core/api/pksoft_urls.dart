import '../config/env.dart';

class PksoftUrls {
  static final customer = _Customer();
  static final guest = _Guest();
  static final order = _Order();
  static final address = _Address();
  static final cancel = _Cancel();
}

/* ================= CUSTOMER ================= */

class _Customer {
  final String register = "api/pk/Customer/register";
  final String registerOtp = "api/pk/Customer/verify-otp";
  final String login = "api/pk/Customer/auth";

  final String product = "api/pk/Customer/product";
  final String category = "api/pk/Customer/load/category";
  final String details = "api/pk/Customer/load/details";

  final String count = "api/pk/Customer/Count";
  final String checklist = "api/pk/Customer/CheckList";
  final String bag = "api/pk/Customer/Bag";

  final String wishlist = "api/pk/Customer/wishlist";
  final String cart = "api/pk/Customer/Cart";
}

/* ================= GUEST ================= */

class _Guest {
  final String register = "api/pk/Customer/guest/auth";
  final String otp = "api/pk/Customer/verify-guest";
  final String order = "api/pk/Order/GuestOrders";
}

/* ================= ORDER ================= */

class _Order {
  final String proceed = "api/pk/Order/proceed";
  final String success = "api/pk/Order/success";
  final String userOrder = "api/pk/User/Orders";
}

/* ================= ADDRESS ================= */

class _Address {
  final String create = "api/pk/Customer/Address/Create";
  final String update = "api/pk/Customer/Address/Update";
  final String delete = "api/pk/Customer/Address/Delete";
  final String get = "api/pk/Customer/Address/List";
  final String setDefault = "api/pk/Customer/Address/Primary";
}

/* ================= CANCEL ================= */

class _Cancel {
  final String order = "api/pk/Order/cancel";
}

