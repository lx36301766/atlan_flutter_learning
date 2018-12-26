

throwTest() {
  throw new FormatException('Expected at least 1 section');
  throw 123;
  throw "dgfdg";


}

main(List<String> args) {

  try {
    throwTest();
  } on ArgumentError {

  } on Exception catch(e) {

  } catch (e) {
    
  } finally {
    
  }

}