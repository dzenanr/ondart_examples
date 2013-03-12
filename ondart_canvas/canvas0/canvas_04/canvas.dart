import 'dart:html';

// based on: http://www.html5canvastutorials.com/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  // butt line cap (top line)
  context.beginPath();
  context.moveTo(200, canvas.height / 2 - 50);
  context.lineTo(canvas.width - 200, canvas.height / 2 - 50);
  context.lineWidth = 20;
  context.strokeStyle = '#0000ff';
  context.lineCap = 'butt';
  context.stroke();
  context.closePath();

  // round line cap (middle line)
  context.beginPath();
  context.moveTo(200, canvas.height / 2);
  context.lineTo(canvas.width - 200, canvas.height / 2);
  context.lineWidth = 20;
  context.strokeStyle = '#0000ff';
  context.lineCap = 'round';
  context.stroke();
  context.closePath();

  // square line cap (bottom line)
  context.beginPath();
  context.moveTo(200, canvas.height / 2 + 50);
  context.lineTo(canvas.width - 200, canvas.height / 2 + 50);
  context.lineWidth = 20;
  context.strokeStyle = '#0000ff';
  context.lineCap = 'square';
  context.stroke();
  context.closePath();
}


