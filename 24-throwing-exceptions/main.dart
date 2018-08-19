main(List<String> arguments) {

  try {
    int age;
    int dogYears = 8;

    if(dogYears != 7) throw new Exception('dog years must be 7');

    if(age == null) throw new NullThrownError();

    print(age * dogYears);
  }
  on NullThrownError {
    print('The value was null!!!');
  }
  on NoSuchMethodError {
    print('Sorry no such method');
  }
  catch (e) {
    print('Unknown error: ${e.toString()}');
  }
  finally {
    print('complete');
  }

}
