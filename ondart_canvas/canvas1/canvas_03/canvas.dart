import 'dart:html';

// based on: http://dev.opera.com/articles/view/html-5-canvas-the-basics/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.fillStyle   = '#0000ff'; // blue
  context.strokeStyle = '#ff0000'; // red
  context.lineWidth   = 4;

  context.beginPath();
  // Start from the top-left point.
  context.moveTo(10, 10); // give the (x,y) coordinates
  context.lineTo(100, 10);
  context.lineTo(10, 100);
  context.lineTo(10, 10);

  // Done! Now fill the shape, and draw the stroke.
  // Note: your shape will not be visible until you call any of the two methods.
  context.fill();
  context.stroke();
  context.closePath();
}


