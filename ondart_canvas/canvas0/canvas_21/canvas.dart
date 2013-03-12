import 'dart:html';

// based on: 
// http://www.html5canvastutorials.com/
// http://www.html5canvastutorials.com/tutorials/html5-canvas-tutorials-introduction/

void main() {
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  ImageElement spaceShip = document.query('#space_ship');

  // draw cropped image
  var sourceX = 20;
  var sourceY = 20;
  var sourceWidth = 240;
  var sourceHeight = 160;
  var destWidth = sourceWidth;
  var destHeight = sourceHeight;
  var destX = canvas.width / 2 - destWidth / 2;
  var destY = canvas.height / 2 - destHeight / 2;

  context.drawImage(spaceShip, sourceX, sourceY, sourceWidth, sourceHeight,
      destX, destY, destWidth, destHeight);
}


