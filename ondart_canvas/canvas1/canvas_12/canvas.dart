import 'dart:html';

// based on: http://dev.opera.com/articles/view/html-5-canvas-the-basics/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.shadowOffsetX = 5;
  context.shadowOffsetY = 5;
  context.shadowBlur    = 4;
  context.shadowColor   = 'rgba(255, 0, 0, 0.5)';
  context.fillStyle    = '#0000ff'; // blue
  context.fillRect(20, 20, 150, 100);
}


