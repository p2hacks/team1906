void tub_draw(){
 // strokeWeight(1);
  noStroke();
  textAlign(CENTER,CENTER);
  fill(255,183,76,50);
  rect(0,0,100,70);
  fill(0);
  textSize(16);
  text("一覧",50,32);
  //quad(0,0,80,0,100,70,0,70);
  fill(255,183,76,100);
  rect(100,0,100,70);
    fill(0);
  textSize(16);
  text("プロフィール",150,32);
  fill(255,183,76,150);
  rect(200,0,100,70);
    fill(0);
  textSize(16);
  text("似顔絵",250,32);
  fill(255,183,76,200);
  rect(300,0,100,70);
    fill(0);
  textSize(16);
  text("設定",350,32);
  fill(255,183,76,250);
  rect(400,0,100,70);
    fill(0);
    textSize(16);
  text("開発者一覧",450,32);
}
