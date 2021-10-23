global class SoapExample {
      webservice static id SoapExample(string name)
      {
          account acc= new account();
          acc.name=name;
          insert acc;
          return acc.id;
      }
}