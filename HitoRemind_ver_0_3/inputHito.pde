int inputHito(){
  background(255);
  
   pushMatrix();
  translate(0, myY);

  fill(0);
  textSize(20);
  text("歳", 130, 345);

  text_box("苗字", 50, 170, 175, 30, 8, 0, 20, 0, 0, 0);

  text_box("名前", 275, 170, 175, 30, 8, 0, 20, 0, 0, 1);

  text_box("ニックネーム", 50, 250, 400, 30, 19, 0, 20, 0, 0, 2);

  text_box("年齢", 50, 330, 60, 30, 2, 0, 20, 0, 0, 3);

  seibetu();

  text_box("特徴1", 50, 410, 400, 30, 19, 0, 20, 0, 0, 5); 
  text_box("特徴2", 50, 490, 400, 30, 19, 0, 20, 0, 0, 6); 
  text_box("特徴3", 50, 570, 400, 30, 19, 0, 20, 0, 0, 7); 
  text_box("特徴4", 50, 650, 400, 30, 19, 0, 20, 0, 0, 8); 

  text_box("出身地", 50, 730, 400, 30, 19, 0, 20, 0, 0, 9);

  text_box("趣味", 50, 810, 400, 60, 38, 1, 20, 0, 3, 10);

  text_box("特技", 50, 920, 400, 60, 38, 1, 20, 0, 3, 11);

  text_box("Tel", 50, 1030, 400, 30, 19, 0, 20, 0, 0, 12); 

  text_box("Mail", 50, 1110, 400, 30, 19, 0, 20, 0, 0, 13); 

  text_box("Twitter", 50, 1190, 400, 30, 19, 0, 20, 0, 0, 14); 

  text_box("メモ", 50, 1270, 400, 295, 209, 11, 20, 0, 3, 15);


  popMatrix();

  save_tag();
  
  
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
  rect(100,0,100,70);
  
  
  fill(0);
  textSize(30);
//  imageMode(CENTER);
 // image(img2,100,650);
 // if(mousePressed && (mouseX >= 25 && mouseX <= 175 && mouseY >= 625 && mouseY <= 675)){
   /*
    if(mousePressed && (mouseX >= 50-37.5 && mouseX <= 50-37.5+75 && mouseY >= 680-12.5 && mouseY <= 680-25+25)){
title=true;
   return 1;
}
*/
  
  return 2;
}


void text_box(String box_name, int r_x, int r_y, int r_w, int r_h, int Text_max, int Line_max, int Text_size, int Text_space, int Line_space, int data_num) {
  if (mouseX>r_x&&mouseX<r_x+r_w&&mouseY>r_y+myY&&mouseY<r_y+r_h+myY && mousePressed) {
    for (int j=0; j<text_sum[dN]; j++) {
      St_Control[j][dN]=true;
      St_Siin_Control[j][dN]=false;
    }
    Back = false;

    dN=data_num;
  }




  fill(0);
  textSize(25);
  textAlign(LEFT, BOTTOM);
  text(box_name, r_x, r_y-5);  
  fill(255);
  stroke(100);
  if (dN==data_num) {
    strokeWeight(2);
  } else {
    strokeWeight(1);
  }
  rect(r_x, r_y, r_w, r_h);
  stroke(0);

  text_size=Text_size; 
  text_space=Text_space; 
  line_space=Line_space; 
  text_start_x=r_x+Text_size; 
  text_start_y=r_y+15; 

  if (dN==data_num) {
    text_max=Text_max;
    line_max=Line_max; 
    text_end_x=width-r_x-r_w+10;
    text_Input(text_max, line_max, text_size, text_space, line_space, text_start_x, text_start_y);//text_max, line_max, text_size, text_space, line_space, text_start_x, text_start_y
    nullGuard[data_num]=true;
  } else if (nullGuard[data_num]) {
    text_draw(text_size, text_space, line_space, text_start_x, text_start_y, data_num);
  }
}


void seibetu() {
  strokeWeight(3);
  if (mouseX>200&&mouseX<320&&mouseY>330+myY&&mouseY<360+myY) {
    if (mousePressed) {
      strokeWeight(0);
      fill(100, 100, 255);
    } else {
      fill(200, 200, 255);
    }
  } else {
    if (St[0][4]=="女") {
      fill(50, 50, 150);
    } else {
      fill(150, 150, 255);
    }
  }
  stroke(50, 50, 255);
  rect(200, 330, 120, 30);
  textAlign(CENTER, CENTER);
  textSize(25);
  fill(0);
  text("男性", 260, 345, 20);

  strokeWeight(4);
  if (mouseX>323&&mouseX<440&&mouseY>330+myY&&mouseY<360+myY) {
    if (mousePressed) {
      fill(255, 100, 100);
      strokeWeight(0);
    } else {
      fill(255, 200, 200);
    }
  } else {
    if (St[0][4]=="男") {
      fill(150, 50, 50);
    } else {
      fill(255, 150, 155);
    }
  }
  stroke(255, 50, 50);
  rect(323, 330, 120, 30);
  textAlign(CENTER, CENTER);
  textSize(25);
  fill(0);
  text("女性", 382, 345, 20);
}


void save_tag() {
  stroke(0);
  strokeWeight(1);
  fill(255);
  rect(-1, 70, 500, 50);

  stroke(150);
  strokeWeight(4);
  if (mouseX>width-40&&mouseX<width-10&&mouseY>80&&mouseY<110) {
    if (mousePressed) {
      fill(150);
      strokeWeight(0);
    } else {
      fill(225);
    }
  } else {
    fill(200);
  }
  rect(width-40, 80, 30, 30);
  textAlign(CENTER, CENTER);
  textSize(25);
  fill(0);
  if (roman) {
    text("あ", width-25, 95, 20);
  } else {
    text("A", width-25, 95, 20);
  }

  strokeWeight(4);
  if (mouseX>210&&mouseX<290&&mouseY>80&&mouseY<110) {
    if (mousePressed) {
      strokeWeight(0);
      fill(150);
    } else {
      fill(225);
    }
  } else {
    fill(200);
  }
  rect(210, 80, 80, 30);
  textAlign(CENTER, CENTER);
  textSize(25);
  fill(0);
  text("保存", 250, 95, 20);
}
  
  
  
