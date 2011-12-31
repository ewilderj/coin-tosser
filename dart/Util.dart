class Util {
  // Yes, this is a long-winded way of doing min/max
  // I tried to extend List but failed to find a decent
  // way of doing it, as List is an interface. When
  // Dart supports mixins, I imagine it'll be a lot easier.
  static min(List values) {
    if (!values.isEmpty()) {
      var r = values.last();
      values.forEach(f(x) {
        if (x < r) {
          r = x;
        }
      });
      return r;
    }
    // undefined if the list is empty
  }
 
  static max(List values) {
    if (!values.isEmpty()) {
      var r = values.last();
      values.forEach(f(x) {
        if (x > r) {
          r = x;
        }
      });
      return r;
    }
    // undefined if the list is empty
  }
  
  // odd that Math has no abs(), provide one
  static num abs(num x) => Math.max(x,-x);
  
  // return a string with n asterisks
  static String asterisks(int n) {
    StringBuffer r = new StringBuffer();
    for (int i = 0; i < n; i++) r.add("*");
    return r.toString();
  }

}
