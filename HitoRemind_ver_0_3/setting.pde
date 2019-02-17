int setting(){
  background(230);
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
    return 3;
    }
  }else if (mouseX>0&&mouseX<400&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(300,0,100,70);
    if(mousePressed) {
    return 4;
    }
  }else if (mouseX>0&&mouseX<500&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(400,0,100,70);
    if(mousePressed) {
    return 5;
    }
  }
  fill(200,150,150,200);
  rect(300,0,100,70);
 
 textSize(50);
 text("赤:"+str(cR)+"\n緑:"+str(cG)+"\n青:"+str(cB),400,200);
 
colorBar(0, 100,350);
colorBar(1, 250,350);
colorBar(2, 400,350);
fill(cR, cG, cB);
rect(100,100,200,200);
  
  return 4;
}

void colorBar(int c, int cbx, int cby){
  
  if(cbby[c] < cby){
    cbby[c]= cby;
  }
    if(cby+256 < cbby[c]){
    cbby[c] = cby+256;
    }
    
    if(mousePressed){
      if(sq(mouseX-cbx)+sq(mouseY-cbby[c])<sq(20)){
      cbby[c] = mouseY;
      }
      println(sq(mouseX-cbx)+sq(mouseY-cbby[c]));
    }
    
    if(c==0){
    cR = cbby[c]-cby;
    fill(255,0,0);
    }else if(c==1){
      cG = cbby[c]-cby;
      fill(0,255,0);
    }else if(c==2){
      cB = cbby[c]-cby;
      fill(0,0,255);
    }else if(c==3){
      cpR = cbby[c]-cby1;
      fill(255,0,0);
  }else if(c==4){
      cpG = cbby[c]-cby1;
      fill(0,255,0);
  }else if(c==5){
      cpB = cbby[c]-cby1;
      fill(0,0,255);
  }
    
    stroke(0);
strokeWeight(2);
  rect(cbx,cby,10,256);
  ellipse(cbx+5,cbby[c],20,20);
}
