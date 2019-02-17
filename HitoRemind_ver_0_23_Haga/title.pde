int title(){//いらんっぽかったので適当、押したら一覧に
  background(0);
  fill(100);
  button("test",20,255,100,400,300,60,5);
  if(mousePressed && button("test",20,255,100,400,300,60,5)){
  load_data("test_text.txt",textData);
    return 1;
  }
  return 0;
}
