int state;

void setup(){
  size(500,700);
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
  }
   state = stateNow;
}
