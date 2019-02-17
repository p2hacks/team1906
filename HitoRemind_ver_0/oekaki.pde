int oekaki() {

  oekakiTime++;
  if(oekakiTime ==1){
    background(255);
  }



  back.setFill(color(255,183,76));
  shape(back, 0, 0); 
  fill(255,183,76);
  rect(1,2,100,198);


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
    //img = loadImage("sketch.png");   
    //img = img.get(sketch_x+1, sketch_y+1, sketch_width-1, sketch_height-1);
    //img.save("sketch.png");
    record_sketch=false;
  }

  text("お絵かき",250,550);
  //println(record_sketch);
  
  fill(255);
  noStroke();
  rect(0,0,500,70);
      tub_draw();
  
  strokeWeight(0);
  if (mouseX>0&&mouseX<100&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(0,0,100,70);
    if(mousePressed) {
    return 1;
    }
  }else if (mouseX>0&&mouseX<200&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(100,0,100,70);
    if(mousePressed) {
    return 2;
    }
  }else if (mouseX>0&&mouseX<300&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(200,0,100,70);
    if(mousePressed) {
    return 5;
    }
  }else if (mouseX>0&&mouseX<400&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(300,0,100,70);
    if(mousePressed) {
    return 3;
    }
  }else if (mouseX>0&&mouseX<500&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(400,0,100,70);
    if(mousePressed) {
    return 4;
    }
  }
  
  //fill(200,150,150,200);
  //rect(200,0,100,70);
  text("似顔絵作成",250,150);
  text("消しゴム・・・ Eキーを押しながら操作",250,550);
  text("ENTERキーで保存",250,600);
 // imageMode(CENTER);
 // image(img2,100,650);
 // if(mousePressed && (mouseX >= 25 && mouseX <= 175 && mouseY >= 625 && mouseY <= 675)){
     if(mousePressed && (mouseX >= 50-37.5 && mouseX <= 50-37.5+75 && mouseY >= 680-12.5 && mouseY <= 680-25+25)){

  return 0;
}

  
  
  
  return 5;
}
