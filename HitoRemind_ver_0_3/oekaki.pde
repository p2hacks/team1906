int oekaki() {

  oekakiTime++;
  if(oekakiTime ==1){
    background(255);
  }



  back.setFill(color(cR,cG,cB));
  shape(back, 0, 0); 
  fill(255,183,76);
  rect(1,2,100,198);

  if (mouseX>sketch_x&&mouseX<(sketch_x+sketch_width)&&mouseY>sketch_y&&mouseY<(sketch_y+sketch_height)) { 
    if (mousePressed == true) {
if((keyPressed==true)&&(key=='e')){
  stroke(255);
  strokeWeight(10);
  println("ERACE");
  }else{
strokeWeight(2);
stroke(cpR, cpG, cpB);
}
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }

  if (record_sketch) {
    fill(255);
    noStroke();
    rect(sketch_x,sketch_y,sketch_width,sketch_height);
    for (int i=0; i<people_sum; i++) {
    hitoData(textData[i][0], textData[i][1], textData[i][2], 25, 100+135*i, textData[i][4]);//最後は登録番号
    if (mousePressed&&data_get[i]) {
      data_number=i;
    save( "sketch.png" );
    PImage nigaoe;
    nigaoe = loadImage("sketch.png");   
    nigaoe = nigaoe.get(sketch_x+1, sketch_y+1, sketch_width-1, sketch_height-1);
    nigaoe.save(str(i+1)+".png");
    record_sketch=false;      
    }
  }
  }
  text("お絵かき",250,550);
  //println(record_sketch);
  
  fill(255);
  noStroke();
  rect(0,0,500,70);
      tub_draw();
  
  strokeWeight(0);
  if (mouseX>0&&mouseX<100&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(0,0,100,70);
    if(mousePressed) {
      oekakiTime = 0;
    return 1;
    }
  }else if (mouseX>0&&mouseX<200&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(100,0,100,70);
    if(mousePressed) {
      oekakiTime = 0;
    return 2;
    }
  }else if (mouseX>0&&mouseX<300&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(200,0,100,70);
    if(mousePressed) {
      oekakiTime = 0;
    return 3;
    }
  }else if (mouseX>0&&mouseX<400&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(300,0,100,70);
    if(mousePressed) {
      oekakiTime = 0;
    return 4;
    }
  }else if (mouseX>0&&mouseX<500&&mouseY>0&&mouseY<70){
    fill(50,200);
    rect(400,0,100,70);
    if(mousePressed) {
      oekakiTime = 0;
    return 5;
    }
  }
  
  //fill(200,150,150,200);
  //rect(200,0,100,70);
  textSize(36);
  text("似顔絵作成",340,130);
  textSize(22);
  text("消しゴム・・・ Eキーを押しながら操作",250,550);
  text("ENTERキーで保存",250,600);
  
     textSize(20);
 text("赤:"+str(cpR-30)+"\n緑:"+str(cpG-30)+"\n青:"+str(cpB-30),180,140);

  colorBar(3, 20,230);
colorBar(4, 60,230);
colorBar(5, 100,230);
fill(cpR, cpG, cpB);
rect(0,70,140,130);

noStroke();
  fill(200,150,150,200);
  rect(200,0,100,70);
  
  
  
  return 3;
}
