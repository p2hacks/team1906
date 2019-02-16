int hitoichi(){
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
  
  
  text("一覧",250,300);
  
  
  if(keyCode == SHIFT && keyPressed){
    return 4;
  }
  
  return 1;
}
