void tub_draw(){
 color orange = color(255,183,76);
 // strokeWeight(1);
  noStroke();
  textAlign(CENTER,CENTER);
  fill(cR, cG, cB,30);
  rect(0,0,100,70);
  fill(0);
  textSize(16);
  text("友達一覧",50,32);
  //quad(0,0,80,0,100,70,0,70);
  fill(cR, cG, cB,80);
  rect(100,0,100,70);
    fill(0);
  textSize(16);
  text("友達追加",150,32);
  fill(cR, cG, cB,130);
  rect(200,0,100,70);
    fill(0);
  textSize(16);
  text("似顔絵",250,32);
  fill(cR, cG, cB,180);
  rect(300,0,100,70);
    fill(0);
  textSize(16);
  text("設定",350,32);
  fill(cR, cG, cB,230);
  rect(400,0,100,70);
    fill(0);
    textSize(16);
  text("開発者一覧",450,32);
}

boolean button(//つくってみたけどあんま使えない、押してる感じになる、各自判断で
  String button_text, int button_text_size, int button_text_fill, 
  int button_x, int button_y, int button_width, int button_height, int button_scale_down)//選んだらscale_downの数だけ小さくなります、それっぽい感じ
{  
  textAlign(CENTER, CENTER);

  if (mouseX>button_x&&mouseX<button_x+button_width&&mouseY>button_y&&mouseY<button_y+button_height) {
    rect(button_x+button_scale_down, button_y+button_scale_down, button_width-(button_scale_down*2), button_height-(button_scale_down*2));
    textSize(button_text_size);
    fill(button_text_fill);
    text(button_text, button_x+(button_width/2), button_y+(button_height/2-(button_scale_down/2)));
    textAlign(RIGHT, TOP);
    return true;
  } else {
    rect(button_x, button_y, button_width, button_height);
    textSize(button_text_size);
    fill(button_text_fill);
    text(button_text, button_x+(button_width/2), button_y+(button_height/2)-1);
    textAlign(RIGHT, TOP);
    return false;
  }
}

void make_data(int number) {//number番目の人のデータをテキストに出力するためのデザイン
  stroke(80);
  imageMode(CORNER);
  image(img[number], 35, 110, 150, 150);
  strokeWeight(6);
  noFill();
  rect(35, 110, 150, 150);
  textAlign(LEFT, TOP);

  fill(0);

  textSize(32);
  text("名前："+textData[number][0]+" "+textData[number][1], 28, 10);

  textSize(20);
  text("("+textData[number][3]+"歳・"+textData[number][4]+")", 384, 56);

  textSize(26);
  text("渾名："+textData[number][2], 35, 55);

  textSize(18);
  text("TEL", 219, 110);
  text(textData[number][12], 240, 134);
  text("e-mail", 220, 166);
  text(textData[number][13], 240, 190);

  if (textData[number][14]!="") {
    if (mouseX >=370 && mouseX <= 460 && mouseY >=235 && mouseY <=265&&mousePressed) {
      link("https://twitter.com/"+textData[number][14]);
      strokeWeight(0);
    } else {
      strokeWeight(4);
    }
    fill(0, 172, 237);
    rect(370, 235, 90, 30);
    fill(0);
    textSize(20);
    text("Twitter", 380, 240);
  }

  textSize(30);
  text("特徴", 30, 310);

  textSize(21);
  text("・"+textData[number][5]+"   ・"+textData[number][6], 50, 359);
  text("・"+textData[number][7]+"   ・"+textData[number][8], 50, 403);

  textSize(23);
  text("趣味："+textData[number][10], 33, 455);
  text("特技："+textData[number][11], 33, 500);

  strokeWeight(2);
  noFill();
  rect(30, 550, 440, 120);
  textSize(20);
  text(textData[number][15],37,563);
}

void load_data(String text_name, String loaded_data[][]) {//text_name.txtを読み込んでloaded_dataに格納する、するだけ
  //データを入力するたびこれで更新する
  //loaded_data[人数(人の識別)][データの数(データの識別)]
  data=loadStrings(text_name);
  people_sum=(data.length-1);

  for (int i=1; i<data.length; i++) {
    String[] inData = split(data[i], ',');
    img[i-1]=loadImage(str(i)+".png");
    for (int j=0; j<inData.length; j++) {
      loaded_data[i-1][j]=inData[j];
    }
  }
}

void hitoData(String last_name, String first_name, String nick_name, int x, int y, String number) {//名前とニックネームだけ取得して、登録番号で表示
  if (mouseX>x&&mouseX<x+450&&mouseY>y+myY&&mouseY<y+myY+120) {//並び変えるならこの順番、検索するならこのlast_nameとかで、表示する際のfor文の回し方をなんとかする(曖昧)
  
    fill(120);
    data_get[int(number)]=true;
  } else {
    fill(80);
    data_get[int(number)]=false;
  }
  
  stroke(150);
  strokeWeight(5);
  rect(x, y+myY, 450, 120);  

imageMode(CORNER);
  if (img[int(number)]!=null) {
    image(img[int(number)], x+17.5, y+17.5+myY, 85, 85);
  }else{
    img[int(number)]=loadImage("unknown.png");
    image(img[int(number)], x+17.5, y+17.5+myY, 85, 85);
  }

  noFill();
  rect(x+17.5, y+17.5+myY, 85, 85);

 textAlign(LEFT,TOP);
  fill(0);
  textSize(22);
  text("名前:"+last_name+" "+first_name, x+120, y+35+myY);

  textSize(19);
  text("ニックネーム:"+nick_name, x+120, y+45+23+myY);
}
