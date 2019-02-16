int state=1;
  int oekakiTime;

int sketch_x=100;
int sketch_y=200;
int sketch_height=300;
int sketch_width=300;

int window_size_x=500;
int window_size_y=700;

boolean record_sketch=false;
boolean record_end=false;

PShape back;

PImage img;

PFont font;

void setup(){
  size(500,700);
  background(255);
  
  font = createFont("MS Gothic", 15, true);
  textFont(font);
  
    back=createShape(); 
  back.beginShape();
  back.vertex(0, 0);
  back.vertex(window_size_x, 0);
  back.vertex(window_size_x, window_size_y);
  back.vertex(0, window_size_y);
  back.vertex(0, 0);
  back.beginContour();
  back.vertex(sketch_x, sketch_y);
  back.vertex(sketch_x, sketch_y+sketch_height);
  back.vertex(sketch_x+sketch_width, sketch_y+sketch_height);
  back.vertex(sketch_x+sketch_width, sketch_y);
  back.vertex(sketch_x, sketch_y);
  back.endContour();
  back.endShape(CLOSE);
  
}

void draw(){
  int stateNow = 0;//現在の状態を表す変数を宣言

  switch(state) {//stateへ返す値を各関数からstateNowを通して代入する
  case 0:
    stateNow = title();//タイトル画面
    break;

  case 1:
    stateNow = hitoichi();//サポーターセレクト画面
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
    stateNow = oekaki();
    break;
    
  }
   state = stateNow;
}

void keyPressed() {
  if (keyCode==ENTER) {
    record_sketch=true;
  }
}

void mousePressed(){
}
  
