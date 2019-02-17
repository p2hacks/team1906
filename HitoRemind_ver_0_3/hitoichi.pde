int words_max=100;
int data_number;

String[] data;//textの保存場所
int people_sum;//登録人数

String [][] textData=new String[100][17];
boolean [] data_get=new boolean[100];
PImage [] img=new PImage[100];

int hitoichi() {

  background(255);
  for (int i=0; i<people_sum; i++) {
    hitoData(textData[i][0], textData[i][1], textData[i][2], 25, 100+135*i, textData[i][4]);//最後は登録番号
    if (mousePressed&&data_get[i]) {
      if (!title) {
        data_number=i;
        return 6;
      }
    }
  }
  tub_draw();
  noStroke();
  fill(200, 150, 150, 200);
  rect(0, 0, 100, 70);

  if (title) {
    fill(255, 255, 255, 255-a*3);
    rect(-1, -1, 501, 701);
    imageMode(CENTER);
    image(img1, 250+i_x_size, 350+i_y_size);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(50);

    if (sumstar == 0) {
      text("人リマインド", 250, 440);
    }

    if (keyPressed || mousePressed) {
      sumstar = sumstar + 1;
    }

    if (sumstar != 0) {

      a = a + 2;
      if (i_x_size+250 > 75) {
        i_x_size = i_x_size - 7;
        i_y_size = i_y_size + 12;
        img1.resize(300+sizex, 100+sizey);
      } else {
        a = 0; //スタートの色の濃さ
        i_x_size = 0;
        i_y_size = 0;
        sizex = 0;
        sizey = 0;
        sumstar = 0;
        title=false;
      }

      if (300+sizex > 150) {
        sizex = sizex-3;
        sizey = sizey-1;
        img1.resize(300+sizex-75, 100+sizey-25);
      } else {
        sizex = 150-300;
        sizey = 50-100+25;
      }
    }
  } else {
    noStroke();
    if (mouseX>0&&mouseX<100&&mouseY>0&&mouseY<70) {
      fill(50, 200);
      rect(0, 0, 100, 70);
      if (mousePressed) {
        return 1;
      }
    } else if (mouseX>100&&mouseX<200&&mouseY>0&&mouseY<70) {
      fill(50, 200);
      rect(100, 0, 100, 70);
      if (mousePressed) {
        return 2;
      }
    } else if (mouseX>200&&mouseX<300&&mouseY>0&&mouseY<70) {
      fill(50, 200);
      rect(200, 0, 100, 70);
      if (mousePressed) {
        return 3;
      }
    } else if (mouseX>300&&mouseX<400&&mouseY>0&&mouseY<70) {
      fill(50, 200);
      rect(300, 0, 100, 70);
      if (mousePressed) {
        return 4;
      }
    } else if (mouseX>400&&mouseX<500&&mouseY>0&&mouseY<70) {
      fill(50, 200);
      rect(400, 0, 100, 70);
      if (mousePressed) {
        return 5;
      }
    }
  }
  /*
  if (mousePressed && (mouseX >= 50-37.5 && mouseX <= 50-37.5+75 && mouseY >= 680-12.5 && mouseY <= 680-25+25)) {
   title=true;
   return 1;
   }
   */

  return 1;
}
