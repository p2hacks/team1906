int syosai(){
  background(255);
  make_data(data_number);
  
  if(key==ENTER){
    for(int j=0;j<16;j++){
for (int i = 0; i < textData[data_number][j].length(); i++) {
    // 配列に順番に格納する
    St[j][data_number] = String.valueOf(textData[data_number][j].charAt(i));
}
    }
    dN=data_number;
    return 7;
  }
  
return 6;
}
