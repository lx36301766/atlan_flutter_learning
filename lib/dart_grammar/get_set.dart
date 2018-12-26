

class Rect {

  num left;
  num right;
  num top;
  num bottom;

  Rect(this.left, this.right, this.top, this.bottom);

  num get width => right - left;
      set width(num value) => value;

  num get height {
        return bottom - top;
      } 
      set xx(num value) {
        
      }

  num getWidth() => right - left;

}

main(List<String> args) {
  var rect = Rect(1,2,2,3);
  num w = rect.width;
  rect.width = 3;
  num w2 = rect.getWidth();
}
