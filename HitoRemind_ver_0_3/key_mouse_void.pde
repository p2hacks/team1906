void keyPressed() {
  if (keyCode==ENTER) {
    record_sketch=true;
  }

  if (state==2) {
    text_Control(text_max, line_max, text_size, text_space, text_start_x, text_end_x);//int text_max,int text_size,int text_space,int text_start_x
  }
  if (state==7) {
    text_Control(text_max, line_max, text_size, text_space, text_start_x, text_end_x);//int text_max,int text_size,int text_space,int text_start_x
  }
}

void mousePressed() {
  if (state==7) {

    if (mouseX>width-40&&mouseX<width-10&&mouseY>80&&mouseY<110) {
      if (roman) {
        for (int i=0; i<text_sum[dN]; i++) {
          St_Control[i][dN]=true;
        }
        roman=false;
      } else {
        roman=true;
      }
    }

    if (mouseX>200&&mouseX<320&&mouseY>330+myY&&mouseY<360+myY) {
      St[0][4]="男";
    }
    if (mouseX>323&&mouseX<440&&mouseY>330+myY&&mouseY<360+myY) {
      St[0][4]="女";
    }


    if (mouseX>210&&mouseX<290&&mouseY>80&&mouseY<110) {
      people_num=nameDataDair.length;
      nameData = new String[nameDataDair.length+1];
      for (int i=0; i<nameDataDair.length; i++) {
        nameData[i]=nameDataDair[i];
      }
      for (int j=0; j<17; j++) {
        for (int i=0; St[i][j]!=null; i++) {
          st_perData += St[i][j];
        }
        if (j<16) {
          perData[j]=st_perData; 
          st_perData="";
          st_nameData += perData[j];
          st_nameData += ",";
        } else {
          perData[j]=str(people_num);
          st_nameData += perData[j];
        }
      }

      nameData[people_num]=st_nameData;
      st_nameData="";
      for (int i=0; i<perData.length; i++) {
        perData[i]=null;
      }
      saveStrings("data.txt", nameData);//ArrayIndexOutOfBoundException
      nameDataDair=loadStrings("data.txt");
      nameDataDair[0]="";
      load_data("data.txt", textData);
    }
  }
  if (state==2) {

    if (mouseX>width-40&&mouseX<width-10&&mouseY>80&&mouseY<110) {
      if (roman) {
        for (int i=0; i<text_sum[dN]; i++) {
          St_Control[i][dN]=true;
        }
        roman=false;
      } else {
        roman=true;
      }
    }

    if (mouseX>200&&mouseX<320&&mouseY>330+myY&&mouseY<360+myY) {
      St[0][4]="男";
    }
    if (mouseX>323&&mouseX<440&&mouseY>330+myY&&mouseY<360+myY) {
      St[0][4]="女";
    }


    if (mouseX>210&&mouseX<290&&mouseY>80&&mouseY<110) {
      people_num=data_number;
      nameData = new String[nameDataDair.length];
      for (int i=0; i<nameDataDair.length; i++) {
        nameData[i]=nameDataDair[i];
      }
      for (int j=0; j<17; j++) {
        for (int i=0; St[i][j]!=null; i++) {
          st_perData += St[i][j];
        }
        if (j<16) {
          perData[j]=st_perData; 
          st_perData="";
          st_nameData += perData[j];
          st_nameData += ",";
        } else {
          perData[j]=str(people_num);
          st_nameData += perData[j];
        }
      }

      nameData[people_num]=st_nameData;
      st_nameData="";
      for (int i=0; i<perData.length; i++) {
        perData[i]=null;
      }
      saveStrings("data.txt", nameData);//ArrayIndexOutOfBoundException
      nameDataDair=loadStrings("data.txt");
      nameDataDair[0]="";
      load_data("data.txt", textData);
    }
  }
}

void mouseReleased() {
  if (mouseX>200&&mouseX<300&&mouseY>0&&mouseY<70) {
    background(255);
  }
}


void mouseWheel(MouseEvent e ) {
  if (state==7) {
    if ( e.getCount() < 0 && myY<0) {
      //奥に向かって回転させる
      myY+=30;
    } else if (e.getCount() > 0) {

      //手前に向かって回転させる

      myY-=30;
    }
  }
  if (state==2) {
    if ( e.getCount() < 0 && myY<0) {
      //奥に向かって回転させる
      myY+=30;
    } else if (e.getCount() > 0) {

      //手前に向かって回転させる

      myY-=30;
    }
  }
  if (state==1) {
    if ( e.getCount() < 0) {
      //奥に向かって回転させる
      myY+=15;
    } else if (e.getCount() > 0) {

      //手前に向かって回転させる

      myY-=15;
    }
  }
  if(state==3&&record_sketch){
  }
  if ( e.getCount() < 0) {
      //奥に向かって回転させる
      myY+=15;
    } else if (e.getCount() > 0) {

      //手前に向かって回転させる

      myY-=15;
    }
}
