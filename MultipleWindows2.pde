/**
 * Multi-Monitor Sketch (v1.61)
 * by GoToLoop (2015/Jun/28)
 *
 * forum.Processing.org/two/discussion/11304/
 * multiple-monitors-primary-dragable-secondary-fullscreen
 *
 * forum.Processing.org/two/discussion/10937/multiple-sketches
 */
 
void setup() {
  size(300, 300, P2D);
  smooth(4);
  noLoop();
  frameRate(60);
  stroke(-1);
  strokeWeight(1.5);
 
  runSketch( new String[] { "--display=1",
                            "--location=0,0",
                            "--sketch-path=" + sketchPath,
                            "" },
             new ProjectorSketch() );
 
  println("Main's  sketchPath: \t\"" + sketchPath + "\"");
  println("Main's  dataPath: \t\"" + dataPath("") + "\"\n");
}
 
void draw() {
  background(0);
  line(0, 0, width, height);
}
 
class ProjectorSketch extends PApplet {
  void setup() {
    size(50, 50, P2D);
    smooth(4);
    //noLoop();
    frameRate(1);
    stroke(#FFFF00);
    strokeWeight(5);
 
    println("Inner's sketchPath: \t\"" + sketchPath("") + "\"");
    println("Inner's dataPath: \t\"" + dataPath("") + "\"\n");
  }
 
  void draw() {
    background((color) random(#000000));
    line(width, 0, 0, height);
 
    //saveFrame( dataPath("screen-####.jpg") );
  }
}
