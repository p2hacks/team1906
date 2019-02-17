int state=1;
int oekakiTime;
float a = 0; //スタートの色の濃さ
float i_x_size = 0;
    float i_y_size = 0;
    int sizex = 0;
    int sizey = 0;
    int sumstar = 0;

int sketch_x=140;
int sketch_y=200;
int sketch_height=300;
int sketch_width=300;

int window_size_x=500;
int window_size_y=700;

boolean record_sketch=false;
boolean record_end=false;

boolean title =true;

PShape back;

PImage img1,img2;

PFont font;

int cR=250, cG=250, cB=0,cpR=0,cpG=0,cpB=0;
int cby = 350, cby1 = 200;
int [] cbby = {600,600,350,230,230,230};


void setup(){
  img1 = loadImage("logo1.PNG");
  img2 = loadImage("logo3.PNG");
  
  load_data("data.txt",textData);
  
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
  
  for (int i=0; i<100; i++) {
    for (int j=0; j<1000; j++) {
      St_Control[j][i]=false;
    }
    for (int j=0; j<100; j++) {
      text_count[i][j]=0;
    }
    St[0][i]="";
    text_x[i]=0;
    text_y[i]=0;
    text_sum[i]=0;
    nullGuard[i]=false;
  }

  nameDataDair=loadStrings("data.txt");
  nameDataDair[0]="";
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
    stateNow = inputHito();//
    nameDataDair=loadStrings("data.txt");
    nameDataDair[0]="";
    break;
    
    case 3:
    stateNow = oekaki();
    break;
    
    case 4:
    stateNow = setting();
    break;
    
    case 5:
    stateNow = prof();
    break;
    
    case 6:
    stateNow = syosai();
    break;
    
    case 7:
    stateNow = hennsyuu();
    break;
    
  }
   state = stateNow;
   if(state != 0 && !title){
  imageMode(CENTER);
  image(img2,50,680);
   }
}


  
