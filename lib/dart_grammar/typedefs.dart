
typedef int Compare(Object a, Object b);

class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

 // Initial, broken implementation.
 int sort(Object a, Object b) => 0;

main() {
  SortedCollection coll = new SortedCollection(sort);
  assert(coll.compare is Function);
  assert(coll.compare is Compare);
}

// class SortedCollection {
//   Function compare;

//   SortedCollection(int f(Object a, Object b)) {
//     compare = f;
//   }
// }

//  // Initial, broken implementation.
//  int sort(Object a, Object b) => 0;

// main() {
//   SortedCollection coll = new SortedCollection(sort);

//   // All we know is that compare is a function,
//   // but what type of function?
//   assert(coll.compare is Function);
// }
