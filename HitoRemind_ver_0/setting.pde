int setting(){
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
  rect(300,0,100,70);
 
 text("設定",250,300);
  
  return 3;
}
