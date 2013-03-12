import 'dart:html';

// based on: http://dev.opera.com/articles/view/html-5-canvas-the-basics/

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  CanvasRenderingContext2D context = canvas.getContext('2d');

  // You need to provide the source and destination (x,y) coordinates
  // for the gradient (from where it starts and where it ends).
  var gradient1 = context.createLinearGradient(20, 20, 120, 120);

  // Now you can add colors in your gradient.
  // The first argument tells the position for the color in your gradient. The
  // accepted value range is from 0 (gradient start) to 1 (gradient end).
  // The second argument tells the color you want, using the CSS color format.
  gradient1.addColorStop(0,   '#ff0000'); // red
  gradient1.addColorStop(0.5, '#ffff00'); // yellow
  gradient1.addColorStop(1,   '#0000ff'); // blue

  // For the radial gradient you also need to provide source
  // and destination circle radius.
  // The (x,y) coordinates define the circle center points (start and
  // destination).
  var gradient2 = context.createRadialGradient(20, 20, 20, 120, 120, 40);

  // Adding colors to a radial gradient is the same as adding colors to linear
  // gradients.
}


