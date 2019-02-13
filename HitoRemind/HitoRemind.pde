int ts;
int bw,bh,bm;
int mReleased;
int mt;
PImage [] img = new PImage [5];
int mw;

void setup(){
  size(1280,720);
  mt = 10;
  img[0] = loadImage("HitoRemindTI1.jpg");
  img[1] = loadImage("HitoRemindTI2.jpg");
  mw = 100;
}

void draw(){
  background(0);
  fill(50);
  rect(0,0,400,height);
  hitoRemindBox("友達一覧", 50, 100);
  hitoRemindBox("友達検索", 50, 250);
  hitoRemindBox("友達追加", 50, 400);
  hitoRemindBox("プロフ", 50, 550);
  
  pushMatrix();
  translate(0,200,0);
  hitoRemindFriends("ぐりこびすこ","びすこくん",450,mw,img[0]);
  hitoRemindFriends("はつねみく","みくたん",450,mw+150,img[1]);
  
  popMatrix();
}

void mouseWheel(MouseEvent event){
  int e = event.getCount();
  mw += 10 * e;
}
