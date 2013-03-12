import 'dart:html';

// based on: http://dev.opera.com/articles/view/html-5-canvas-the-basics/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  // Create an ImageData object.
  var imgd = context.createImageData(50, 50);
  var pix = imgd.data;
  var n = 1;
  // Loop over each pixel and set a transparent red.
  for (var i = 0; i < n; i += 4) {
    pix[i  ] = 255; // red channel
    pix[i+3] = 127; // alpha channel
    n = pix.length;
  }

  // Draw the ImageData object at the given (x,y) coordinates.
  context.putImageData(imgd, 20, 20);
}


