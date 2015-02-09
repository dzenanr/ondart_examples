import 'dart:html';

// https://developer.mozilla.org/en-US/docs/DOM/Manipulating_the_browser_history

Element step;

void main() {
  step = querySelector("#step");
  window.history.pushState('step a', 'a');
  window.history.pushState('step b', 'b');
  window.history.pushState('step c', 'c');
  window.history.pushState('step d', 'd');
  window.onPopState.listen(showSteps);
}

void showSteps(PopStateEvent event) {
  if (event.state != null) {
    step.innerHtml = event.state.toString();
  }
}

