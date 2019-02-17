int move_wheel=0;

int hitoichi() {
  background(0);
  
  for (int i=0; i<people_sum; i++) {
    hitoData(textData[i][0], textData[i][1], textData[i][2], 25, 50+135*i, textData[i][4]);//最後は登録番号
    if (mousePressed&&data_get[i]) {
      deta_number=i;
      return 5;
    }

    fill(100);
    strokeWeight(4);

    stroke(180);
    if (mouseX >=440 && mouseX <= 480 && mouseY >=20 && mouseY <=60) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    rect(440, 20, 40, 40);

    if (mouseX >=440 && mouseX <= 480 && mouseY >=20 && mouseY <=60) {
      fill(255);
    } else {
      fill(180);
    }
    noStroke();
    rect(456.25, 27.5, 7.5, 25);
    rect(447.5, 36.25, 25, 7.5);
  }

  return 1;
}

void mouseWheel(MouseEvent event) {
  int e = event.getCount();
  move_wheel += 15 * e;
}

void hitoData(String last_name, String first_name, String nick_name, int x, int y, String number) {//名前とニックネームだけ取得して、登録番号で表示
  if (mouseX>x&&mouseX<x+450&&mouseY>y+move_wheel&&mouseY<y+move_wheel+120) {//並び変えるならこの順番、検索するならこのlast_nameとかで、表示する際のfor文の回し方をなんとかする(曖昧)
  
    fill(120);
    data_get[int(number)]=true;
  } else {
    fill(80);
    data_get[int(number)]=false;
  }
  
  stroke(150);
  strokeWeight(5);
  rect(x, y+move_wheel, 450, 120);  

  if (img[int(number)]!=null) {
    image(img[int(number)], x+17.5, y+17.5+move_wheel, 85, 85);
  }else{
    img[int(number)]=loadImage("unknown.png");
    image(img[int(number)], x+17.5, y+17.5+move_wheel, 85, 85);
  }

  noFill();
  rect(x+17.5, y+17.5+move_wheel, 85, 85);

  fill(0);
  textSize(22);
  text("名前:"+last_name+" "+first_name, x+120, y+35+move_wheel);

  textSize(19);
  text("ニックネーム:"+nick_name, x+120, y+45+23+move_wheel);
}
