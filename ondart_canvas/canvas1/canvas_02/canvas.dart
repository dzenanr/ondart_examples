import 'dart:html';

// based on: http://dev.opera.com/articles/view/html-5-canvas-the-basics/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.fillStyle   = '#0000ff'; // blue
  context.strokeStyle = '#ff0000'; // red
  context.lineWidth   = 4;

  // Draw some rectangles.
  context.fillRect  (0,   0, 150, 50);
  context.strokeRect(0,  60, 150, 50);
  context.clearRect (30, 25,  90, 60);
  context.strokeRect(30, 25,  90, 60);
}


