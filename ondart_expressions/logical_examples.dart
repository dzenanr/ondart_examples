main() {
  var p = true;
  var q = false;
  var r = !q;
  var s = false;

  assert(p && r);
  assert(p && !q);
  assert(p || q);
  assert(!(q && s));
  assert(!(p && s));
}

