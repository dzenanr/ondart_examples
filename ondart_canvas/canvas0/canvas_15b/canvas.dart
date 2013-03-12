import 'dart:html';
import 'dart:math';

// based on: http://www.html5canvastutorials.com/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.beginPath();
  context.arc(288, 75, 70, 0, PI, false);
  context.closePath();
  context.lineWidth = 5;
  context.fillStyle = 'red';
  context.fill();
  context.strokeStyle = '#550000';
  context.stroke();
}


