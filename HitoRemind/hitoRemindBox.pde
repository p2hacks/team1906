void hitoRemindBox(String s, int x, int y){
  int ts = 60;
  int w = 300;
  int h = 8;
  PFont font = createFont("MS PGothic",48,true);
  textFont(font);
  stroke(2);
  fill(255,255);
  rect(x, y, w,ts+h,7);
  fill(0);
  textSize(ts);
  textAlign(CENTER,TOP);
  text(s,x+w/2,y+4);
  if((x<mouseX)&&(mouseX<x+w)&&(y<mouseY)&&(mouseY<y+ts+h)){
          fill(0,50);
  rect(x, y, w,ts+h,7);
      if(mousePressed == true){
        mt=0;
      fill(0,150);
  rect(x, y, w,ts+h,7);
  }else{
    mt++;
  if(mt==1){
   fill(0);
  textSize(ts);
  text("PRESSED",x,y+4);
  println("PRESSED");
  }
  }
  }
  println(mt);
}
