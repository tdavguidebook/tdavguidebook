// Define variables for animation
int step = 0;
int footerHeight = 150;  // Height of the footer area for instructions
int margin = 10;  // Margin around the text in the footer
int shapeMargin = 20;  // Margin from the top of the canvas to the first shape

void setup() {
  size(800, 600);
  textSize(16);
  textAlign(LEFT, TOP);
}

void draw() {
  background(255);  // Clear the background
  
  // Draw shapes within available space
  drawShapes();
  // Display instructions at the bottom of the window
  displayInstructions();
}

void drawShapes() {
  // Define the usable area for shapes, adjusting for the margin
  int usableHeight = height - footerHeight - shapeMargin;

  // Draw a Circle
  if (step >= 1) {
    fill(200, 0, 0);  // Red color
    ellipse(100, shapeMargin + 100, 80, 80);  // x, y, width, height
  }
  
  // Draw a Rectangle
  if (step >= 2) {
    fill(0, 200, 0);  // Green color
    rect(200, shapeMargin + 80, 120, 60);  // x, y, width, height
  }
  
  // Draw a Line
  if (step >= 3) {
    stroke(0, 0, 255);  // Blue color
    line(350, shapeMargin + 50, 500, shapeMargin + 200);  // x1, y1, x2, y2
  }
  
  // Draw a Triangle
  if (step >= 4) {
    fill(255, 255, 0);  // Yellow color
    triangle(600, shapeMargin + 50, 550, shapeMargin + 200, 650, shapeMargin + 200);  // x1, y1, x2, y2, x3, y3
  }
  
  // Draw an Ellipse
  if (step >= 5) {
    fill(255, 0, 255);  // Magenta color
    ellipse(100, shapeMargin + 300, 150, 100);  // x, y, width, height
  }
  
  // Draw an Arc
  if (step >= 6) {
    noFill();  // No fill for arc
    stroke(0, 255, 255);  // Cyan color
    arc(300, shapeMargin + 300, 150, 150, QUARTER_PI, PI);  // x, y, width, height, start, stop
  }
  
  // Draw a Bezier Curve
  if (step >= 7) {
    stroke(255, 165, 0);  // Orange color
    noFill();  // No fill for Bezier
    bezier(100, shapeMargin + 400, 200, shapeMargin + 300, 400, shapeMargin + 300, 500, shapeMargin + 400);  // x1, y1, x2, y2, x3, y3, x4, y4
  }
  
  // Draw a Point
  if (step >= 8) {
    stroke(0);  // Black color
    strokeWeight(10);  // Point size
    point(700, shapeMargin + 400);  // x, y
  }
  
  // Draw Text
  if (step >= 9) {
    fill(0);  // Black color
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Hello, Processing!", 400, height - footerHeight - 50);  // text, x, y
  }
}

void displayInstructions() {
  // Draw footer background
  fill(0);  // Black color for the footer background
  noStroke();
  rect(0, height - footerHeight, width, footerHeight);  // Footer background
  
  // Display instructions in white text
  fill(255);  // White color for text
  textSize(16);
  textAlign(LEFT, TOP);
  
  String instructionText = getInstructionText();
  drawWrappedText(instructionText, margin, height - footerHeight + margin, width - 2 * margin, footerHeight - 2 * margin);
  
  // Final welcome note when tutorial is complete
  if (step >= 10) {
    fill(255);  // White color for final note
    textSize(18);
    textAlign(CENTER, CENTER);
    text("Welcome to Processing!\nThank you for completing the tutorial.\nPress any key to restart the tutorial.", width / 2, height - footerHeight / 2);
  }
}

String getInstructionText() {
  // Prepare instruction text based on the current step
  if (step == 0) {
    return "Press any key to start the tutorial!";
  } else if (step == 1) {
    return "Circle:\nDraws a circle with specified position and diameter.\n\nCode:\nfill(200, 0, 0);\nellipse(100, 100, 80, 80);";
  } else if (step == 2) {
    return "Rectangle:\nDraws a rectangle with specified position and dimensions.\n\nCode:\nfill(0, 200, 0);\nrect(200, 80, 120, 60);";
  } else if (step == 3) {
    return "Line:\nDraws a line between two points.\n\nCode:\nstroke(0, 0, 255);\nline(350, 50, 500, 200);";
  } else if (step == 4) {
    return "Triangle:\nDraws a triangle using three points.\n\nCode:\nfill(255, 255, 0);\ntriangle(600, 50, 550, 200, 650, 200);";
  } else if (step == 5) {
    return "Ellipse:\nDraws an ellipse with specified position and size.\n\nCode:\nfill(255, 0, 255);\nellipse(100, 300, 150, 100);";
  } else if (step == 6) {
    return "Arc:\nDraws an arc within an ellipse boundary.\n\nCode:\nnoFill();\nstroke(0, 255, 255);\narc(300, 300, 150, 150, QUARTER_PI, PI);";
  } else if (step == 7) {
    return "Bezier Curve:\nDraws a Bezier curve with control points.\n\nCode:\nstroke(255, 165, 0);\nnoFill();\nbezier(100, 500, 200, 400, 400, 400, 500, 500);";
  } else if (step == 8) {
    return "Point:\nDraws a single point at a specified location.\n\nCode:\nstroke(0);\nstrokeWeight(10);\npoint(700, 500);";
  } else if (step == 9) {
    return "Text:\nDraws text at a specified position with size and alignment.\n\nCode:\nfill(0);\ntextSize(32);\ntextAlign(CENTER, CENTER);\ntext(\"Hello, Processing!\", 400, 550);";
  } else {
    return "";  // Default to empty if step is out of range
  }
}

void drawWrappedText(String text, float x, float y, float w, float h) {
  // Draw wrapped text within the given area
  String[] lines = splitText(text, w);
  float lineHeight = textAscent() + textDescent();
  
  for (int i = 0; i < lines.length; i++) {
    if (y + i * lineHeight > height - footerHeight + h) {
      break;  // Stop if we exceed the available space
    }
    text(lines[i], x, y + i * lineHeight);
  }
}

String[] splitText(String text, float maxWidth) {
  ArrayList<String> lines = new ArrayList<String>();
  String[] words = split(text, ' ');
  
  String line = "";
  for (String word : words) {
    String testLine = line + (line.isEmpty() ? "" : " ") + word;
    float testWidth = textWidth(testLine);
    
    if (testWidth > maxWidth) {
      if (!line.isEmpty()) {
        lines.add(line);
        line = word;
      } else {
        lines.add(word);
        line = "";
      }
    } else {
      line = testLine;
    }
  }
  
  if (!line.isEmpty()) {
    lines.add(line);
  }
  
  return lines.toArray(new String[0]);
}

void keyPressed() {
  if (step >= 10) {
    // Restart the tutorial if it's complete
    step = 0;
  } else {
    // Advance the tutorial
    step++;
  }
}
