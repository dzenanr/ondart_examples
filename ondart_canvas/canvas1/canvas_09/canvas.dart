import 'dart:html';

// based on: http://dev.opera.com/articles/view/html-5-canvas-the-basics/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  ImageElement spaceShip = document.querySelector('#space_ship');

  // Get the CanvasPixelArray from the given coordinates and dimensions.
  var imgd = context.getImageData(spaceShip.offset.left, spaceShip.offset.top, spaceShip.width, spaceShip.height);
  var pix = imgd.data;
  var n = 1;
  // Loop over each pixel and invert the color.
  for (var i = 0; i < n; i += 4) {
    pix[i  ] = 255 - pix[i  ]; // red
    pix[i+1] = 255 - pix[i+1]; // green
    pix[i+2] = 255 - pix[i+2]; // blue
    // i+3 is alpha (the fourth element)
    n = pix.length;
  }

  // Draw the ImageData at the given (x,y) coordinates.
  context.putImageData(imgd, 120, 120);
}


