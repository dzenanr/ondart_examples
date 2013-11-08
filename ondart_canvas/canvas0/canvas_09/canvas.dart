import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  // set line width for all lines
  context.lineWidth = 12;

  // miter line join (left)
  context.moveTo(99, 150);
  context.lineTo(149, 50);
  context.lineTo(199, 150);
  context.lineJoin = 'miter';
  context.stroke();

  // round line join (middle)
  context.moveTo(239, 150);
  context.lineTo(289, 50);
  context.lineTo(339, 150);
  context.lineJoin = 'round';
  context.stroke();

  // bevel line join (right)
  context.moveTo(379, 150);
  context.lineTo(429, 50);
  context.lineTo(479, 150);
  context.lineJoin = 'bevel';
  context.stroke();
}


