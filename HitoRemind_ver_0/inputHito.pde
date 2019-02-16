int inputHito(){
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
  
  text("入力",250,300);
  
  fill(0);
  textSize(30);
  text_box();
  
  return 4;
}

void text_box(){
  text("名前",50,140);  
  fill(255);
  rect(50,150,400,30);
}
  
