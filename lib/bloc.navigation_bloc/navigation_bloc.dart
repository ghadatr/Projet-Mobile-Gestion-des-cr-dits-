import 'package:pfa/pages/Echec.dart';
import 'package:pfa/pages/Felicitation.dart';
import 'package:pfa/pages/vehiculeNeufScreen.dart';
import 'package:pfa/pages/vehiculeOccasionScreen.dart';

import '../pages/Consommation.dart';
import '../pages/Education.dart';
import 'package:bloc/bloc.dart';

import '../pages/Amenagement.dart';

import '../pages/myaccountspage.dart';
import '../pages/MyVehiculepage.dart';
import '../pages/Immobilier.dart';
import '../pages/BesionIslamique.dart';
import '../pages/BesoinMedical.dart';
import '../pages/Electronique.dart';

import '../pages/homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  vehiculeNeuve,
  vehiculeOccasion,
  MyAccountClickedEvent,
  MyVehiculeClickedEvent,
  MyImmobilierClickedEvent,
  AmenagementClickedEvent,
  EductionClickedEvent,
  ElectroniqueClickedEvent,
  BesoinMedicalClickedEvent,
  ConsommationClickedEvent,
  BesionIslamiqueClickedEvent,
  felicitationClickedEvent,
  EchecClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MyAccountsPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPage();
        break;
      case NavigationEvents.MyVehiculeClickedEvent:
        yield MyVehiculePage();
        break;
        case NavigationEvents.MyImmobilierClickedEvent:
        yield Immobilier();
        break;
        case NavigationEvents.AmenagementClickedEvent:
        yield Amenagement();
        break;
        case NavigationEvents.EductionClickedEvent:
        yield Education();
        break;
        case NavigationEvents.BesionIslamiqueClickedEvent:
        yield BesoinIslamique();
        break;
        case NavigationEvents.ConsommationClickedEvent:
        yield Consommation();
        break;
        case NavigationEvents.ElectroniqueClickedEvent:
        yield Electronique();
        break;
        case NavigationEvents.BesoinMedicalClickedEvent:
        yield BesoinMedical();
        break;
        case NavigationEvents.vehiculeNeuve:
        yield VehiculeNeuveScreen();
        break;
        case NavigationEvents.vehiculeOccasion:
        yield VehiculeOccasionScreen();
        break;
        case NavigationEvents.BesoinMedicalClickedEvent:
        yield BesoinMedical();
        break;
        case NavigationEvents.felicitationClickedEvent:
        yield Felicitation();
        break;
        case NavigationEvents.EchecClickedEvent:
        yield Echec();
        break;
    }
  }
}


