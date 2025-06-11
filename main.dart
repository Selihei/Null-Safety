void main(){
//Liste hat garantiert immer 3 Elemente
List<Map<String, double?>> weatherData = [
{'temp': 5.3, 'rain': 0.9, 'wind': null},
{'temp': 4.5, 'rain': null, 'wind': 16.8},
{'temp': null, 'rain': 3.8, 'wind': null}
];

// Erstelle leere Listen für die Werte
List<double> temps = [];
List<double> rains = [];
List<double> winds = [];

//Füge die Werte der Wetterdaten in die Listen ein
temps.add(weatherData[0]['temp'] ?? 0);
temps.add(weatherData[1]['temp'] ?? 0);
temps.add(weatherData[2]['temp'] ?? 0);

rains.add(weatherData[0]['rain'] ?? 0);
rains.add(weatherData[1]['rain'] ?? 0);
rains.add(weatherData[2]['rain'] ?? 0);

winds.add(weatherData[0]['wind'] ?? 0);
winds.add(weatherData[1]['wind'] ?? 0);
winds.add(weatherData[2]['wind'] ?? 0);


// Berechnnug der Durchschnitte
double avgTemp = (temps[0] + temps[1] + temps[2]) / temps.length;
double avgRain = (rains[0] + rains[1] + rains[2]) / rains.length;
double avgWind = (winds[0] + winds[1] + winds[2]) / winds.length;
print('Durchschnitt Temperatur: $avgTemp °C');
print('Durchschnitt Niederschlagsmenge: $avgRain mm');
print('Durchschnitt Windgeschwindigkeit: $avgWind km/h');
}

