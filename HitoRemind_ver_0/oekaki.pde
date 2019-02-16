int oekaki() {


  back.setFill(color(0));
  shape(back, 0, 0); 


  if (mouseX>sketch_x&&mouseX<(sketch_x+sketch_width)&&mouseY>sketch_y&&mouseY<(sketch_y+sketch_height)) { 
    if (mousePressed == true) {
if((keyPressed==true)&&(key=='e')){
  stroke(255);
  strokeWeight(10);
  println("ERACE");
  }else{
strokeWeight(2);
stroke(0);
}
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }

  if (record_sketch) {
    save( "sketch"+str(year())+str(month())+str(day())+str(hour())+str(minute())+str(second())+".png" );
    img = loadImage("sketch.png");   
    img = img.get(sketch_x+1, sketch_y+1, sketch_width-1, sketch_height-1);
    img.save("sketch.png");
    record_sketch=false;
  }

  //println(record_sketch);
  return 5;
}
