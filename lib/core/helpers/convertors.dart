int kelvinToCelsius(double kelvin) {
  return (kelvin - 273.15).toInt();
}

int kelvinToFahrenheit(double kelvin) {
  return ((kelvin - 273.15) * 9 / 5 + 32).toInt();
}
