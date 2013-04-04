import 'dart:html';

// http://my.opera.com/hallvors/blog/2009/05/20/the-day-supporting-document-onload-became-a-bug

int count = 0;
DivElement result;

void main() {
  result = document.query('#result');
  window.onLoad.listen(incrementCount);
}

void incrementCount(Event event) {
  String visitCount = window.localStorage['visit-counter'];
  if (visitCount != null) {
    int c = int.parse(visitCount);
    c++;
    result.innerHtml = c.toString();
    window.localStorage['visit-counter'] = result.innerHtml;
  } else {
    window.localStorage['visit-counter'] = '1';
  }
}

