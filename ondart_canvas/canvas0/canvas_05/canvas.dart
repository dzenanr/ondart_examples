import 'dart:html';
import 'dart:math';

// based on: http://www.html5canvastutorials.com/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  var x = canvas.width / 2;
  var y = canvas.height / 2;
  var radius = 75;
  var startAngle = 1.1 * PI;
  var endAngle = 1.9 * PI;
  var counterClockwise = false;

  context.arc(x, y, radius, startAngle, endAngle, counterClockwise);
  context.lineWidth = 8;
  context.strokeStyle = 'orange';
  context.stroke();
}


