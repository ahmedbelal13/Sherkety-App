class Country {
  final String name;
  final String code;
  final String flagPath;

  const Country({
    required this.name,
    required this.code,
    required this.flagPath,
  });
}

List<Country> countries = [
  Country(name: 'Brazil', code: '55', flagPath: 'assets/flags/brazil.png'),
  Country(name: 'Canada', code: '1', flagPath: 'assets/flags/canada.png'),
  Country(name: 'Egypt', code: '20', flagPath: 'assets/flags/egypt.png'),
  Country(name: 'France', code: '33', flagPath: 'assets/flags/france.png'),
  Country(name: 'Germany', code: '49', flagPath: 'assets/flags/germany.png'),
  Country(name: 'Italy', code: '39', flagPath: 'assets/flags/italy.png'),
  Country(name: 'Spain', code: '34', flagPath: 'assets/flags/spain.png'),
  Country(name: 'United Kingdom', code: '44', flagPath: 'assets/flags/uk.png'),
  Country(name: 'United States', code: '1', flagPath: 'assets/flags/us.png'),
];
