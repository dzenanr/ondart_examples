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
  // context.drawImage(spaceShip, 20, 50);
  context.drawImageToRect(spaceShip,
      new Rect(20, 50, 720, 320));
}


