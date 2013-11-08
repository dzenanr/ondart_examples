import 'dart:html';
import 'dart:math';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  var centerX = canvas.width / 2;
  var centerY = canvas.height / 2;
  var radius = 70;

  context.arc(centerX, centerY, radius, 0, 2 * PI, false);
  context.fillStyle = 'lightgreen';
  context.fill();
  context.lineWidth = 5;
  context.strokeStyle = '#003300';
  context.stroke();
}


