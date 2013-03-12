import 'dart:html';

// based on: http://dev.opera.com/articles/view/html-5-canvas-the-basics/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  context.fillStyle    = '#0000ff'; // blue
  context.font         = 'italic 30px sans-serif';
  context.textBaseline = 'top';
  context.fillText('Hello world!', 0, 0);
  context.font         = 'bold 30px sans-serif';
  context.strokeText('Hello world!', 0, 50);
}


