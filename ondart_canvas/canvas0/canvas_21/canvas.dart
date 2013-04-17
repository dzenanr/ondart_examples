import 'dart:html';

// based on:
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

// void drawImage(CanvasImageSource source, num destinationX, num destinationY) and
// void drawImageAtScale(CanvasImageSource source, Rect destinationRect, {Rect sourceRect})
// CanvasImageSource is one of ImageElement, VideoElement, or CanvasElement.

void main() {
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  ImageElement spaceShip = document.query('#space_ship');

  // draw cropped image
  var sourceX = 20;
  var sourceY = 20;
  var sourceWidth = 240;
  var sourceHeight = 160;
  var sourceRect = new Rect(sourceX, sourceY, sourceWidth, sourceHeight);
  var destWidth = sourceWidth;
  var destHeight = sourceHeight;
  var destX = canvas.width / 2 - destWidth / 2;
  var destY = canvas.height / 2 - destHeight / 2;
  var destRect = new Rect(destX, destY, destWidth, destHeight);

  // context.drawImage(spaceShip, sourceX, sourceY);
  context.drawImageToRect(spaceShip, destRect, sourceRect:sourceRect);
}


