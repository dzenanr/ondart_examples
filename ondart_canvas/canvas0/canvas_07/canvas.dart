import 'dart:html';

// based on: http://www.html5canvastutorials.com/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.moveTo(188, 130);
  context.bezierCurveTo(140, 10, 388, 10, 388, 170);
  context.lineWidth = 6;
  context.strokeStyle = 'gray';
  context.stroke();
}


