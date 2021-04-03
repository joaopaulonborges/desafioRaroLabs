import 'package:responsive_builder/responsive_builder.dart';

class TamanhoFontes {

  static double micro(context) {
    return getValueForScreenType<double>(
      context: context,
      mobile: 10,
      tablet: 8,
      desktop: 8,
    ).floorToDouble();
  }

  static double pequena(context) {
    return getValueForScreenType<double>(
      context: context,
      mobile: 16,
      tablet: 14,
      desktop: 14,
    ).floorToDouble();
  }

  static double media(context) {
    return getValueForScreenType<double>(
      context: context,
      mobile: 18,
      tablet: 16,
      desktop: 16,
    ).floorToDouble();
  }

  static double grande(context) {
    return getValueForScreenType<double>(
      context: context,
      mobile: 20,
      tablet: 18,
      desktop: 18,
    ).floorToDouble();
  }

  static double extraGrande(context) {
    return getValueForScreenType<double>(
      context: context,
      mobile: 25,
      tablet: 16,
      desktop: 16,
    ).floorToDouble();
  }

  static double gigante(context) {
    return getValueForScreenType<double>(
      context: context,
      mobile: 30,
      tablet: 18,
      desktop: 18,
    ).floorToDouble();
  }
}