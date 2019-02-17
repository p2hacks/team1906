int hitoichi(){
  background(255);
  tub_draw();
  
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
  fill(200,150,150,200);
  rect(0,0,100,70);
  
  text("一覧",250,300);
//  imageMode(CENTER);
// image(img2,100,650);
  if(mousePressed && (mouseX >= 50-37.5 && mouseX <= 50-37.5+75 && mouseY >= 680-12.5 && mouseY <= 680-25+25)){
  return 0;
}
  
  if(keyCode == SHIFT && keyPressed){
    return 4;
  }
  
  return 1;
}
