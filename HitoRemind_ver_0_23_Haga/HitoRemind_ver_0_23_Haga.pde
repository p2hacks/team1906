//全体的にグロバの必要あるかは要検討
int words_max=100;
int deta_number;

String[] data;//textの保存場所
int people_sum;//登録人数

String [][] textData=new String[100][17];
boolean [] data_get=new boolean[100];
PImage [] img=new PImage[100];

//この下はグロバ確定(なはず)

PFont font;
int state;

void setup() {
  size(500, 700);
  smooth();
  font = createFont("MS Gothic", 15, true);
  textFont(font);
}

void draw() {
  textAlign(LEFT, TOP);
  int stateNow = 0;//現在の状態を表す変数を宣言

  switch(state) {//stateへ返す値を各関数からstateNowを通して代入する
  case 0:
    stateNow = title();//タイトル画面
    break;

  case 1:
    stateNow = hitoichi();
    break;

  case 2:
    stateNow = prof();//
    break;

  case 3:
    stateNow = setting();
    break;

  case 4:
    stateNow = inputHito();
    break;

  case 5:
    stateNow= hito_data();
  }
  state = stateNow;
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
  stroke(255);
  image(img[number], 35, 110, 150, 150);
  strokeWeight(6);
  noFill();
  rect(35, 110, 150, 150);
  textAlign(LEFT, TOP);

  fill(255);

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
    fill(255);
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
