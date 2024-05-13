abstract class Homestate {
  const Homestate();
}

class HomeInitialState extends Homestate {}

class PrayertimeLoading extends Homestate {}

class PrayertimeSuccess extends Homestate {}

class PrayertimeFailure extends Homestate {
  final String message;
  PrayertimeFailure({required this.message});
}

class CurrentPageState extends Homestate {}
