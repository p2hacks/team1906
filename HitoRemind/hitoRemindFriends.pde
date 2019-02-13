void hitoRemindFriends(String s1, String s2, int x, int y, PImage im){
  int ts = 50;
  int bs = ts*2;
  int w = 800;
  int h = 8;
  PFont font = createFont("MS PGothic",48,true);
  textFont(font);
  stroke(2);
  fill(255,255);
  rect(x, y, w,bs+h,7);
  fill(0);
  textSize(ts);
  textAlign(LEFT,TOP);
  text("名前:"+s1,x+130,y+4);
  text("あだ名:"+s2,x+130,y+54);
  if((x<mouseX)&&(mouseX<x+w)&&(y<mouseY)&&(mouseY<y+bs+h)){
          fill(0,50);
  rect(x, y, w,bs+h,7);
      if(mousePressed == true){
        mt=0;
      fill(0,150);
  rect(x, y, w,bs+h,7);
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
        imageMode(CENTER);
      image(im,x+70,y+55);
}
