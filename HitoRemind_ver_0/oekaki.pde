int oekaki() {
  background(255);
  tub_draw();
  
  if (mouseX>0&&mouseX<100&&mouseY>0&&mouseY<70 && mousePressed) {
    return 1;
  }else if (mouseX>0&&mouseX<200&&mouseY>0&&mouseY<70 && mousePressed) {
    return 2;
  }else if (mouseX>0&&mouseX<300&&mouseY>0&&mouseY<70 && mousePressed) {
    return 5;
  }else if (mouseX>0&&mouseX<400&&mouseY>0&&mouseY<70 && mousePressed) {
    return 3;
  }else if (mouseX>0&&mouseX<500&&mouseY>0&&mouseY<70 && mousePressed) {
    return 3;
  }
  
  
  text("お絵かき",250,300);


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
