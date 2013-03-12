import 'dart:html';

// based on: http://www.html5canvastutorials.com/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.rect(188, 50, 200, 100);
  context.fillStyle = 'yellow';
  context.fill();
  context.lineWidth = 4;
  context.strokeStyle = 'black';
  context.stroke();
}


