int hennsyuu(){
  
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
  stroke(0);
  strokeWeight(1);
  fill(255);
  rect(0,0,500,70);
  textSize(50);
  fill(0);
  text("編集",250,35);
  
  return 7;
}
