//===========================================
//テキスト入力用


int text_max = 200;//文章の最大数

int line_max = 20;

int text_size = 20;//文字サイズ

int text_space = 0;//文字間隔

int line_space = 0;//行間隔

int text_start_x = 50;//一文字目のX座標

int text_end_x = 200;//一文字目のX座標

int text_start_y = 100;//一文字目のY座標

int text_sum [] = new int[100];

int text_x [] = new int[100];
int text_y [] = new int[100];

int [][] text_count = new int[100][100];

String [][] St = new String[1000][100];
boolean [][] St_Control = new boolean[1000][100];
boolean [][] St_Siin_Control = new boolean[1000][100];

boolean roman=false;

boolean Back = false;

boolean save=false;

String st_perData = "";
String st_nameData = "";

String [] perData = new String[16]; 
String [] nameData;

String [] nameDataDair;

float myY;

int dN;

boolean [] nullGuard = new boolean[100];

int people_num;


//=========================================

void text_Input(int text_max, int line_max, int text_size, int text_space, int line_space, int text_start_x, int text_start_y) {  

  textAlign(CENTER, CENTER);

  textSize(text_size);

  fill(0);


  if (save) {
    saveStrings("data.txt", nameData);
    save=false;
  }

  int text_counter = 0;

  for (int i=0; i<=text_y[dN]; i++)
  {
    for (int j=0; j<text_count[i][dN]; j++)
    {
      text(St[text_counter][dN], text_start_x+j*(text_size*(text_space+10)/10), text_start_y+i*(text_size*(line_space+10)/10));
      if (St_Control[text_counter][dN] == false) {
        text("＿", text_start_x+j*(text_size*(text_space+10)/10), text_start_y+i*(text_size*(line_space+10)/10));
      }
      text_counter++;
    }
  }

  if (frameCount/40%2 == 0 || keyPressed && (key == BACKSPACE || key == ENTER || key == ' '))
  {
    textAlign(CENTER, CENTER);
    text("　|", text_start_x+(text_x[dN]-1)*(text_size*(text_space+10)/10), text_start_y+text_y[dN]*(text_size*(line_space+10)/10));
  }

}

void text_draw(int text_size, int text_space, int line_space, int text_start_x, int text_start_y, int drawDataNumber) {
  textAlign(CENTER, CENTER);
  textSize(text_size);
  fill(0);
  int text_counter = 0;

  for (int i=0; i<=text_y[drawDataNumber]; i++)
  {
    for (int j=0; j<text_count[i][drawDataNumber]; j++)
    {
      text(St[text_counter][drawDataNumber], text_start_x+j*(text_size*(text_space+10)/10), text_start_y+i*(text_size*(line_space+10)/10));
      //if (St_Control[text_counter][drawDataNumber] == false) {
       // text("＿", text_start_x+j*(text_size*(text_space+10)/10), text_start_y+i*(text_size*(line_space+10)/10));
    //  }
      text_counter++;
    }
  }
}



void text_Data_Roman() {

  if (text_sum[dN]==0) {
    if (key=='a'||key=='i'||key=='u'||key=='e'||key=='o') {

      if (key=='a') {
        St[text_sum[dN]][dN]="あ";
      } else if (key=='i') {
        St[text_sum[dN]][dN]="い";
      } else if (key=='u') {
        St[text_sum[dN]][dN]="う";
      } else if (key=='e') {
        St[text_sum[dN]][dN]="え";
      } else if (key=='o') {
        St[text_sum[dN]][dN]="お";
      }          
      text_x[dN]++;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]++;
    } else {
      textIn();
      keyCodeTextConversion_All();
    }
  } else if (text_sum[dN]>0) {

    if (!St_Siin_Control[text_sum[dN]-1][dN]) {

      if (key=='a'||key=='i'||key=='u'||key=='e'||key=='o') {

        if (key=='a') {
          St[text_sum[dN]][dN]="あ";
        } else if (key=='i') {
          St[text_sum[dN]][dN]="い";
        } else if (key=='u') {
          St[text_sum[dN]][dN]="う";
        } else if (key=='e') {
          St[text_sum[dN]][dN]="え";
        } else if (key=='o') {
          St[text_sum[dN]][dN]="お";
        }          
        text_x[dN]++;
        text_count[text_y[dN]][dN] = text_x[dN];
        text_sum[dN]++;
      } else {
        if (St_Control[text_sum[dN]-1][dN] == false) {
          if (key!=' ') {
            textIn();
          }
        } else {
          textIn();
        }
        keyCodeTextConversion_All();
      }
    } else {     

      String s = St[text_sum[dN]-1][dN]; 

      if (St_Control[text_sum[dN]-1][dN] == false) {

        if (text_sum[dN]>1) {         
          textConversion_3to2_2("z", "j", "y", "じ", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_2("t", "c", "y", "ち", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("c", "h", "ち", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("r", "y", "り", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("p", "y", "ぴ", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("s", "y", "し", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("s", "h", "し", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("g", "y", "ぎ", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("h", "y", "ひ", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("k", "y", "き", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("n", "y", "に", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("b", "y", "び", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("m", "y", "み", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("d", "y", "ぢ", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("f", "y", "ふ", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("t", "h", "て", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("d", "h", "で", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          textConversion_3to2_1("w", "h", "う", "ぁ", "ぃ", "", "ぇ", "ぉ");

          String s2 = St[text_sum[dN]-1][dN]; 

          textConversion_3to1_1("x", "l", "y", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");

          if (s2 == St[text_sum[dN]-1][dN]) {
            textConversion_3to1_2("x", "l", "t", "っ");
          }
        }


        textConversion_2to1_2("k", "c", "か", "き", "く", "け", "こ");

        textConversion_2to1_1("s", "さ", "し", "す", "せ", "そ");

        textConversion_2to1_1("t", "た", "ち", "つ", "て", "と");

        textConversion_2to1_1("n", "な", "に", "ぬ", "ね", "の");

        textConversion_2to1_1("h", "は", "ひ", "ふ", "へ", "ほ");

        textConversion_2to1_1("m", "ま", "み", "む", "め", "も");

        textConversion_2to1_1("y", "や", "い", "ゆ", "え", "よ");

        textConversion_2to1_1("r", "ら", "り", "る", "れ", "ろ");

        textConversion_2to1_1("w", "わ", "い", "う", "え", "を");

        textConversion_2to1_1("p", "ぱ", "ぴ", "ぷ", "ぺ", "ぽ");

        textConversion_2to1_1("b", "ば", "び", "ぶ", "べ", "ぼ");

        textConversion_2to1_1("d", "だ", "ぢ", "づ", "で", "ど");

        textConversion_2to1_1("g", "が", "ぎ", "ぐ", "げ", "ご");

        textConversion_2to1_1("z", "ざ", "じ", "ず", "ぜ", "ぞ");

        textConversion_2to1_2("l", "x", "ぁ", "ぃ", "ぅ", "ぇ", "ぉ");


        textConversion_2to2("q", "く", "ぁ", "ぃ", "ぅ", "ぇ", "ぉ");

        textConversion_2to2("f", "ふ", "ぁ", "ぃ", "ぅ", "ぇ", "ぉ");

        textConversion_2to2("v", "ヴ", "ぁ", "ぃ", "ぅ", "ぇ", "ぉ");

        textConversion_2to2("j", "じ", "ゃ", "ぃ", "ゅ", "ぇ", "ょ");
      }


      if (s == St[text_sum[dN]-1][dN]) {

        if (St[text_sum[dN]-1][dN].equals("n")) {

          if (key == 'n') {
            St[text_sum[dN]-1][dN]="ん";
          } else if (key != 'y') {
            St[text_sum[dN]-1][dN]="ん";
            if (St_Control[text_sum[dN]-1][dN] == false) {
              if (key!=' ') {
                textIn();
              }
            } else {
              textIn();
            }
          } else {                        
            textIn();
          }
        } else { 
          if (St_Control[text_sum[dN]-1][dN] == false) {
            if (key!=' ') {
              textIn();
            }
          } else {
            textIn();
          }
          keyCodeTextConversion_All();
        }
      }
    }
  }
}

void keyCodeTextConversion_All() {
  keyCodeTextConversion(45, "ー");
  keyCodeTextConversion(514, "^");
  keyCodeTextConversion(92, "￥");
  keyCodeTextConversion(512, "＠");
  keyCodeTextConversion(91, "「");
  keyCodeTextConversion(59, "；");
  keyCodeTextConversion(513, "：");
  keyCodeTextConversion(93, "」");
  keyCodeTextConversion(44, "、");
  keyCodeTextConversion(46, "。");
  keyCodeTextConversion(47, "・");
  keyCodeTextConversion(92, "￥");

  keyCodeTextConversion_Shift('<', "＜");
  keyCodeTextConversion_Shift('>', "＞");
  keyCodeTextConversion_Shift('?', "？");
  keyCodeTextConversion_Shift('_', "＿");
  keyCodeTextConversion_Shift('+', "＋");
  keyCodeTextConversion_Shift('*', "＊");
  keyCodeTextConversion_Shift('}', "｝");
  keyCodeTextConversion_Shift('`', "‘");
  keyCodeTextConversion_Shift('{', "｛");
  keyCodeTextConversion_Shift('|', "｜");
  keyCodeTextConversion_Shift('~', "～");
  keyCodeTextConversion_Shift('=', "＝");
  keyCodeTextConversion_Shift(')', "）");
  keyCodeTextConversion_Shift('(', "（");
  keyCodeTextConversion_Shift_2("'", "’");
  keyCodeTextConversion_Shift('&', "＆");
  keyCodeTextConversion_Shift('%', "％");
  keyCodeTextConversion_Shift('$', "＄");
  keyCodeTextConversion_Shift('#', "＃");
  keyCodeTextConversion_Shift('"', "”");
  keyCodeTextConversion_Shift('!', "!");
}


void Katakana_Conversion_All(int i) {

  Katakana_Conversion(i, "あ", "ア");
  Katakana_Conversion(i, "い", "イ");
  Katakana_Conversion(i, "う", "ウ");
  Katakana_Conversion(i, "え", "エ");
  Katakana_Conversion(i, "お", "オ");
  Katakana_Conversion(i, "か", "カ");
  Katakana_Conversion(i, "き", "キ");
  Katakana_Conversion(i, "く", "ク");
  Katakana_Conversion(i, "け", "ケ");
  Katakana_Conversion(i, "こ", "コ");
  Katakana_Conversion(i, "さ", "サ");
  Katakana_Conversion(i, "し", "シ");
  Katakana_Conversion(i, "す", "ス");
  Katakana_Conversion(i, "せ", "セ");
  Katakana_Conversion(i, "そ", "ソ");
  Katakana_Conversion(i, "た", "タ");
  Katakana_Conversion(i, "ち", "チ");
  Katakana_Conversion(i, "つ", "ツ");
  Katakana_Conversion(i, "て", "テ");
  Katakana_Conversion(i, "と", "ト");
  Katakana_Conversion(i, "な", "ナ");
  Katakana_Conversion(i, "に", "二");
  Katakana_Conversion(i, "ぬ", "ヌ");
  Katakana_Conversion(i, "ね", "ネ");
  Katakana_Conversion(i, "の", "ノ");
  Katakana_Conversion(i, "は", "ハ");
  Katakana_Conversion(i, "ひ", "ヒ");
  Katakana_Conversion(i, "ふ", "フ");
  Katakana_Conversion(i, "へ", "ヘ");
  Katakana_Conversion(i, "ほ", "ホ");
  Katakana_Conversion(i, "ま", "マ");
  Katakana_Conversion(i, "み", "ミ");
  Katakana_Conversion(i, "む", "ム");
  Katakana_Conversion(i, "め", "メ");
  Katakana_Conversion(i, "も", "モ");
  Katakana_Conversion(i, "や", "ヤ");
  Katakana_Conversion(i, "ゆ", "ユ");
  Katakana_Conversion(i, "よ", "ヨ");
  Katakana_Conversion(i, "ら", "ラ");
  Katakana_Conversion(i, "り", "リ");
  Katakana_Conversion(i, "る", "ル");
  Katakana_Conversion(i, "れ", "レ");
  Katakana_Conversion(i, "ろ", "ロ");
  Katakana_Conversion(i, "わ", "ワ");
  Katakana_Conversion(i, "を", "ヲ");
  Katakana_Conversion(i, "ん", "ン");
  Katakana_Conversion(i, "ゃ", "ャ");
  Katakana_Conversion(i, "ゅ", "ュ");
  Katakana_Conversion(i, "ょ", "ョ");
  Katakana_Conversion(i, "ぁ", "ァ");
  Katakana_Conversion(i, "ぃ", "ィ");
  Katakana_Conversion(i, "ぅ", "ゥ");
  Katakana_Conversion(i, "ぇ", "ェ");
  Katakana_Conversion(i, "ぉ", "ォ");
  Katakana_Conversion(i, "っ", "ッ");  

  Katakana_Conversion(i, "が", "ガ");
  Katakana_Conversion(i, "ぎ", "ギ");
  Katakana_Conversion(i, "ぐ", "グ");
  Katakana_Conversion(i, "げ", "ゲ");
  Katakana_Conversion(i, "ご", "ゴ");
  Katakana_Conversion(i, "ざ", "ザ");
  Katakana_Conversion(i, "じ", "ジ");
  Katakana_Conversion(i, "ず", "ズ");
  Katakana_Conversion(i, "ぜ", "ゼ");
  Katakana_Conversion(i, "ぞ", "ゾ");
  Katakana_Conversion(i, "だ", "ダ");
  Katakana_Conversion(i, "ぢ", "ヂ");
  Katakana_Conversion(i, "づ", "ヅ");
  Katakana_Conversion(i, "で", "デ");
  Katakana_Conversion(i, "ど", "ド");
  Katakana_Conversion(i, "ぱ", "パ");
  Katakana_Conversion(i, "ぴ", "ピ");
  Katakana_Conversion(i, "ぷ", "プ");
  Katakana_Conversion(i, "ぺ", "ペ");
  Katakana_Conversion(i, "ぽ", "ポ");
  Katakana_Conversion(i, "ば", "バ");
  Katakana_Conversion(i, "び", "ビ");
  Katakana_Conversion(i, "ぶ", "ブ");
  Katakana_Conversion(i, "べ", "ベ");
  Katakana_Conversion(i, "ぼ", "ボ");
  
  Katakana_Conversion(i, "1", "１");
  Katakana_Conversion(i, "2", "２");
  Katakana_Conversion(i, "3", "３");
  Katakana_Conversion(i, "4", "４");
  Katakana_Conversion(i, "5", "５");
  Katakana_Conversion(i, "6", "６");
  Katakana_Conversion(i, "7", "７");
  Katakana_Conversion(i, "8", "８");
  Katakana_Conversion(i, "9", "９");
  Katakana_Conversion(i, "0", "０");
  Katakana_Conversion(i, "q", "ｑ");
  Katakana_Conversion(i, "w", "ｗ");
  Katakana_Conversion(i, "r", "ｒ");
  Katakana_Conversion(i, "t", "ｔ");
  Katakana_Conversion(i, "y", "ｙ");
  Katakana_Conversion(i, "p", "ｐ");
  Katakana_Conversion(i, "s", "ｓ");
  Katakana_Conversion(i, "d", "ｄ");
  Katakana_Conversion(i, "f", "ｆ");
  Katakana_Conversion(i, "g", "ｇ");
  Katakana_Conversion(i, "h", "ｈ");
  Katakana_Conversion(i, "j", "ｊ");
  Katakana_Conversion(i, "k", "ｋ");
  Katakana_Conversion(i, "l", "ｌ");
  Katakana_Conversion(i, "z", "ｚ");
  Katakana_Conversion(i, "x", "ｘ");
  Katakana_Conversion(i, "c", "ｃ");
  Katakana_Conversion(i, "v", "ｖ");
  Katakana_Conversion(i, "b", "ｂ");
  Katakana_Conversion(i, "n", "ｎ");
  Katakana_Conversion(i, "m", "ｍ");
}

void Katakana_Conversion_back_All(int i) {
  Katakana_Conversion_back(i, "あ", "ア");
  Katakana_Conversion_back(i, "い", "イ");
  Katakana_Conversion_back(i, "う", "ウ");
  Katakana_Conversion_back(i, "え", "エ");
  Katakana_Conversion_back(i, "お", "オ");
  Katakana_Conversion_back(i, "か", "カ");
  Katakana_Conversion_back(i, "き", "キ");
  Katakana_Conversion_back(i, "く", "ク");
  Katakana_Conversion_back(i, "け", "ケ");
  Katakana_Conversion_back(i, "こ", "コ");
  Katakana_Conversion_back(i, "さ", "サ");
  Katakana_Conversion_back(i, "し", "シ");
  Katakana_Conversion_back(i, "す", "ス");
  Katakana_Conversion_back(i, "せ", "セ");
  Katakana_Conversion_back(i, "そ", "ソ");
  Katakana_Conversion_back(i, "た", "タ");
  Katakana_Conversion_back(i, "ち", "チ");
  Katakana_Conversion_back(i, "つ", "ツ");
  Katakana_Conversion_back(i, "て", "テ");
  Katakana_Conversion_back(i, "と", "ト");
  Katakana_Conversion_back(i, "な", "ナ");
  Katakana_Conversion_back(i, "に", "二");
  Katakana_Conversion_back(i, "ぬ", "ヌ");
  Katakana_Conversion_back(i, "ね", "ネ");
  Katakana_Conversion_back(i, "の", "ノ");
  Katakana_Conversion_back(i, "は", "ハ");
  Katakana_Conversion_back(i, "ひ", "ヒ");
  Katakana_Conversion_back(i, "ふ", "フ");
  Katakana_Conversion_back(i, "へ", "ヘ");
  Katakana_Conversion_back(i, "ほ", "ホ");
  Katakana_Conversion_back(i, "ま", "マ");
  Katakana_Conversion_back(i, "み", "ミ");
  Katakana_Conversion_back(i, "む", "ム");
  Katakana_Conversion_back(i, "め", "メ");
  Katakana_Conversion_back(i, "も", "モ");
  Katakana_Conversion_back(i, "や", "ヤ");
  Katakana_Conversion_back(i, "ゆ", "ユ");
  Katakana_Conversion_back(i, "よ", "ヨ");
  Katakana_Conversion_back(i, "ら", "ラ");
  Katakana_Conversion_back(i, "り", "リ");
  Katakana_Conversion_back(i, "る", "ル");
  Katakana_Conversion_back(i, "れ", "レ");
  Katakana_Conversion_back(i, "ろ", "ロ");
  Katakana_Conversion_back(i, "わ", "ワ");
  Katakana_Conversion_back(i, "を", "ヲ");
  Katakana_Conversion_back(i, "ん", "ン");
  Katakana_Conversion_back(i, "ゃ", "ャ");
  Katakana_Conversion_back(i, "ゅ", "ュ");
  Katakana_Conversion_back(i, "ょ", "ョ");
  Katakana_Conversion_back(i, "ぁ", "ァ");
  Katakana_Conversion_back(i, "ぃ", "ィ");
  Katakana_Conversion_back(i, "ぅ", "ゥ");
  Katakana_Conversion_back(i, "ぇ", "ェ");
  Katakana_Conversion_back(i, "ぉ", "ォ");
  Katakana_Conversion_back(i, "っ", "ッ");

  Katakana_Conversion_back(i, "が", "ガ");
  Katakana_Conversion_back(i, "ぎ", "ギ");
  Katakana_Conversion_back(i, "ぐ", "グ");
  Katakana_Conversion_back(i, "げ", "ゲ");
  Katakana_Conversion_back(i, "ご", "ゴ");
  Katakana_Conversion_back(i, "ざ", "ザ");
  Katakana_Conversion_back(i, "じ", "ジ");
  Katakana_Conversion_back(i, "ず", "ズ");
  Katakana_Conversion_back(i, "ぜ", "ゼ");
  Katakana_Conversion_back(i, "ぞ", "ゾ");
  Katakana_Conversion_back(i, "だ", "ダ");
  Katakana_Conversion_back(i, "ぢ", "ヂ");
  Katakana_Conversion_back(i, "づ", "ヅ");
  Katakana_Conversion_back(i, "で", "デ");
  Katakana_Conversion_back(i, "ど", "ド");
  Katakana_Conversion_back(i, "ぱ", "パ");
  Katakana_Conversion_back(i, "ぴ", "ピ");
  Katakana_Conversion_back(i, "ぷ", "プ");
  Katakana_Conversion_back(i, "ぺ", "ペ");
  Katakana_Conversion_back(i, "ぽ", "ポ");
  Katakana_Conversion_back(i, "ば", "バ");
  Katakana_Conversion_back(i, "び", "ビ");
  Katakana_Conversion_back(i, "ぶ", "ブ");
  Katakana_Conversion_back(i, "べ", "ベ");
  Katakana_Conversion_back(i, "ぼ", "ボ");
  
  Katakana_Conversion_back(i, "1", "１");
  Katakana_Conversion_back(i, "2", "２");
  Katakana_Conversion_back(i, "3", "３");
  Katakana_Conversion_back(i, "4", "４");
  Katakana_Conversion_back(i, "5", "５");
  Katakana_Conversion_back(i, "6", "６");
  Katakana_Conversion_back(i, "7", "７");
  Katakana_Conversion_back(i, "8", "８");
  Katakana_Conversion_back(i, "9", "９");
  Katakana_Conversion_back(i, "0", "０");
  Katakana_Conversion_back(i, "q", "ｑ");
  Katakana_Conversion_back(i, "w", "ｗ");
  Katakana_Conversion_back(i, "r", "ｒ");
  Katakana_Conversion_back(i, "t", "ｔ");
  Katakana_Conversion_back(i, "y", "ｙ");
  Katakana_Conversion_back(i, "p", "ｐ");
  Katakana_Conversion_back(i, "s", "ｓ");
  Katakana_Conversion_back(i, "d", "ｄ");
  Katakana_Conversion_back(i, "f", "ｆ");
  Katakana_Conversion_back(i, "g", "ｇ");
  Katakana_Conversion_back(i, "h", "ｈ");
  Katakana_Conversion_back(i, "j", "ｊ");
  Katakana_Conversion_back(i, "k", "ｋ");
  Katakana_Conversion_back(i, "l", "ｌ");
  Katakana_Conversion_back(i, "z", "ｚ");
  Katakana_Conversion_back(i, "x", "ｘ");
  Katakana_Conversion_back(i, "c", "ｃ");
  Katakana_Conversion_back(i, "v", "ｖ");
  Katakana_Conversion_back(i, "b", "ｂ");
  Katakana_Conversion_back(i, "n", "ｎ");
  Katakana_Conversion_back(i, "m", "ｍ");
}

void textConversion_3to2_1(String siin_1, String y, String big_t, String small_t_1, String small_t_2, String small_t_3, String small_t_4, String small_t_5) {
  if (St[text_sum[dN]-2][dN].equals(siin_1) && St[text_sum[dN]-1][dN].equals(y)) {
    if (key=='a') {
      text_tu_1(siin_1, 3);
      St[text_sum[dN]-2][dN]=big_t;
      St[text_sum[dN]-1][dN]=small_t_1;
    } else if (key=='i') {
      text_tu_1(siin_1, 3);
      St[text_sum[dN]-2][dN]=big_t;
      St[text_sum[dN]-1][dN]=small_t_2;
    } else if (key=='u') {
      text_tu_1(siin_1, 3);
      St[text_sum[dN]-2][dN]=big_t;
      if (siin_1 != "w") {
        St[text_sum[dN]-1][dN]=small_t_3;
      } else {
        St[text_sum[dN]-1][dN]=null;
        text_x[dN]--;
        text_count[text_y[dN]][dN] = text_x[dN];
        text_sum[dN]--;
      }
    } else if (key=='e') {
      text_tu_1(siin_1, 3);
      St[text_sum[dN]-2][dN]=big_t;
      St[text_sum[dN]-1][dN]=small_t_4;
    } else if (key=='o') {
      text_tu_1(siin_1, 3);
      St[text_sum[dN]-2][dN]=big_t;  
      St[text_sum[dN]-1][dN]=small_t_5;
    }
  }
}


void textConversion_3to2_2(String siin_1, String siin_2, String center, String big_t, String small_t_1, String small_t_2, String small_t_3, String small_t_4, String small_t_5) {
  if ((St[text_sum[dN]-2][dN].equals(siin_1) || St[text_sum[dN]-2][dN].equals(siin_2))&&St[text_sum[dN]-1][dN].equals(center)) {
    if (key=='a') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=big_t;
      St[text_sum[dN]-1][dN]=small_t_1;
    } else if (key=='i') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=big_t;
      St[text_sum[dN]-1][dN]=small_t_2;
    } else if (key=='u') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=big_t;
      St[text_sum[dN]-1][dN]=small_t_3;
    } else if (key=='e') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=big_t;
      St[text_sum[dN]-1][dN]=small_t_4;
    } else if (key=='o') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=big_t;  
      St[text_sum[dN]-1][dN]=small_t_5;
    }
  }
}

void textConversion_3to1_1(String siin_1, String siin_2, String center, String small_t_1, String small_t_2, String small_t_3, String small_t_4, String small_t_5) {
  if ((St[text_sum[dN]-2][dN].equals(siin_1) || St[text_sum[dN]-2][dN].equals(siin_2)) && St[text_sum[dN]-1][dN].equals(center)) {
    if (key=='a') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=small_t_1;
      St[text_sum[dN]-1][dN]=null;
      text_x[dN]--;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]--;
    } else if (key=='i') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=small_t_2;
      St[text_sum[dN]-1][dN]=null;
      text_x[dN]--;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]--;
    } else if (key=='u') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=small_t_3;
      St[text_sum[dN]-1][dN]=null;
      text_x[dN]--;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]--;
    } else if (key=='e') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=small_t_4;
      St[text_sum[dN]-1][dN]=null;
      text_x[dN]--;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]--;
    } else if (key=='o') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=small_t_5;  
      St[text_sum[dN]-1][dN]=null;
      text_x[dN]--;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]--;
    }
  }
}

void textConversion_3to1_2(String siin_1, String siin_2, String center, String big_t) {
  if ((St[text_sum[dN]-2][dN].equals(siin_1) || St[text_sum[dN]-2][dN].equals(siin_2)) && St[text_sum[dN]-1][dN].equals(center)) {
    if (key=='u') {
      text_tu_2(siin_1, siin_2, 3);
      St[text_sum[dN]-2][dN]=big_t;
      text_x[dN]--;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]--;
    }
  }
}


void textConversion_2to1_1(String siin_1, String big_t_1, String big_t_2, String big_t_3, String big_t_4, String big_t_5) {
  if (St[text_sum[dN]-1][dN].equals(siin_1)) {

    if (key=='a') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t_1;
    } else if (key=='i') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t_2;
      if (siin_1 == "w") {
        St[text_sum[dN]-1][dN]="う";
        St[text_sum[dN]][dN]="ぃ";
        text_x[dN]++;
        text_count[text_y[dN]][dN] = text_x[dN];
        text_sum[dN]++;
      }
    } else if (key=='u') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t_3;
    } else if (key=='e') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t_4;
      if (siin_1 == "w") {
        St[text_sum[dN]-1][dN]="う";
        St[text_sum[dN]][dN]="ぇ";
        text_x[dN]++;
        text_count[text_y[dN]][dN] = text_x[dN];
        text_sum[dN]++;
      }
    } else if (key=='o') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t_5;
    }
  }
}

void textConversion_2to1_2(String siin_1, String siin_2, String big_t_1, String big_t_2, String big_t_3, String big_t_4, String big_t_5) {
  if ( (St[text_sum[dN]-1][dN].equals(siin_1))||(St[text_sum[dN]-1][dN].equals(siin_2))) {

    if (key=='a') {
      text_tu_2(siin_1, siin_2, 2);
      St[text_sum[dN]-1][dN]=big_t_1;
    } else if (key=='i') {
      text_tu_2(siin_1, siin_2, 2);
      St[text_sum[dN]-1][dN]=big_t_2;
    } else if (key=='u') {
      text_tu_2(siin_1, siin_2, 2);
      St[text_sum[dN]-1][dN]=big_t_3;
    } else if (key=='e') {
      text_tu_2(siin_1, siin_2, 2);
      St[text_sum[dN]-1][dN]=big_t_4;
    } else if (key=='o') {
      text_tu_2(siin_1, siin_2, 2);
      St[text_sum[dN]-1][dN]=big_t_5;
    }
  }
}


void textConversion_2to2(String siin_1, String big_t, String small_t_1, String small_t_2, String small_t_3, String small_t_4, String small_t_5) {
  if (St[text_sum[dN]-1][dN].equals(siin_1)) {
    if (key=='a') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t;
      St[text_sum[dN]][dN]=small_t_1;
      text_x[dN]++;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]++;
    } else if (key=='i') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t;
      if (siin_1 != "j") {
        St[text_sum[dN]][dN]=small_t_2;
        text_x[dN]++;
        text_count[text_y[dN]][dN] = text_x[dN];
        text_sum[dN]++;
      }
    } else if (key=='u') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t;
      if (siin_1 == "j") {
        St[text_sum[dN]][dN]=small_t_3;
        text_x[dN]++;
        text_count[text_y[dN]][dN] = text_x[dN];
        text_sum[dN]++;
      }
    } else if (key=='e') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t;
      St[text_sum[dN]][dN]=small_t_4;
      text_x[dN]++;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]++;
    } else if (key=='o') {
      text_tu_1(siin_1, 2);
      St[text_sum[dN]-1][dN]=big_t;
      St[text_sum[dN]][dN]=small_t_5;
      text_x[dN]++;
      text_count[text_y[dN]][dN] = text_x[dN];
      text_sum[dN]++;
    }
  }
}

void text_tu_1(String siin, int backNumber) {
  if (text_sum[dN]>backNumber-1) {
    if (St[text_sum[dN]-backNumber][dN].equals(siin)) {
      St[text_sum[dN]-backNumber][dN]="っ";
    }
  }
}

void text_tu_2(String siin_1, String siin_2, int backNumber) {
  if (text_sum[dN]>backNumber-1) {
    if (St[text_sum[dN]-backNumber][dN].equals(siin_1) && St[text_sum[dN]-backNumber+1][dN].equals(siin_1) || St[text_sum[dN]-backNumber][dN].equals(siin_2) && St[text_sum[dN]-backNumber+1][dN].equals(siin_2)) {
      St[text_sum[dN]-backNumber][dN]="っ";
    }
  }
}


void keyCodeTextConversion(int code, String word) {
  if (keyCode==code) {
    St[text_sum[dN]-1][dN]=word;
  }
}

void keyCodeTextConversion_Shift(int Key, String word) {
  if (key == Key) {
    St[text_sum[dN]-1][dN]=word;
  }
}
void keyCodeTextConversion_Shift_2(String Key, String word) {
  if (str(key).equals(Key)) {
    St[text_sum[dN]-1][dN]=word;
  }
}



void Katakana_Conversion(int i, String hira, String kana) {
  if (St[i][dN].equals(hira)) {
    St[i][dN]=kana;
    Back=false;
  }
}

void Katakana_Conversion_back(int i, String hira, String kana) {
  if (St[i][dN].equals(kana)) {
    St[i][dN]=hira;
  }
}

void text_Control(int text_max, int line_max, int text_size, int text_space, int text_start_x, int text_end_x) {

  if (text_sum[dN]>0) {
    if (siin_Check(St[text_sum[dN]-1][dN])) {
      St_Siin_Control[text_sum[dN]-1][dN]=true;
    } else {
      St_Siin_Control[text_sum[dN]-1][dN]=false;
    }
  }

  if (key == ' ' && !St_Control[text_sum[dN]-1][dN]) {
    for (int i=0; i<text_sum[dN]; i++) {
      if (St_Control[i][dN] == false) {
        Katakana_Conversion_All(i);
        if (Back) {
          Katakana_Conversion_back_All(i);
        }
        Back=true;
      }
    }
  }

  if (keyCode == BACKSPACE) {

    if (text_x[dN]>0) {
      text_x[dN]--;
      text_sum[dN]--;
      text_count[text_y[dN]][dN] = text_x[dN];
      St[text_sum[dN]][dN] = null;
      St_Control[text_sum[dN]][dN]=false;
      if (text_y[dN]>0 && text_sum[dN]>0) {
        if (St_Control[text_sum[dN]-1][dN]==false && text_x[dN] == 0) {
          text_y[dN]--;
          text_x[dN]=text_count[text_y[dN]][dN];
        }
      }
    } else if (text_y[dN]>0) {      
      text_y[dN]--;
      text_x[dN]=text_count[text_y[dN]][dN];
    }
  } else if (keyCode == ENTER) {
    if (text_sum[dN]==0) {
      if (text_y[dN]<line_max && text_sum[dN]<text_max) {
        text_count[text_y[dN]][dN]= text_x[dN];
        text_y[dN]++;
      }
    } else {
      if (St_Control[text_sum[dN]-1][dN] == true || text_x[dN] == 0) {
        if (text_y[dN]<line_max && text_sum[dN]<text_max) {
          text_count[text_y[dN]][dN] = text_x[dN];
          text_x[dN] = 0;
          text_y[dN]++;
        }
      }    
      if (St_Control[text_sum[dN]-1][dN] == false && text_sum[dN]>0) {
        for (int i=0; i<text_sum[dN]; i++) {
          St_Control[i][dN]=true;
        }
      }
    }
  } else if ((width-((text_start_x+text_end_x)+text_x[dN]*text_size*(text_space+10)/10))<0) {
    if (text_y[dN]<line_max && text_sum[dN]<text_max) {
      text_count[text_y[dN]][dN] = text_x[dN];
      text_x[dN] = 0;
      text_y[dN]++;
    }
  }

  if (text_sum[dN] < text_max && keyCode != SHIFT && keyCode != ENTER && keyCode != BACKSPACE) {

    if (text_y[dN]<line_max && text_sum[dN]<text_max) {

      if (roman) {

        text_Data_Roman();
      } else {
        if (text_sum[dN] < text_max) {        
          textIn();
          St_Control[text_sum[dN]-1][dN]=true;
        }
      }
    }

    if (text_y[dN]==line_max && text_sum[dN]<text_max && (width-((text_start_x+text_end_x)+text_x[dN]*text_size*(text_space+10)/10))>0) {

      if (roman) {

        text_Data_Roman();
      } else {
        if (text_sum[dN] < text_max) {        
          textIn();
          St_Control[text_sum[dN]-1][dN]=true;
        }
      }
    }
  }
}

void textIn() {
  String st = str(key);
  text_x[dN]++;
  text_count[text_y[dN]][dN] = text_x[dN];
  St[text_sum[dN]][dN] = st;
  text_sum[dN]++;
}

boolean siin_Check(String Text) {
  if (Text.equals("q")||Text.equals("w")||Text.equals("r")||Text.equals("t")||Text.equals("y")
    ||Text.equals("g")||Text.equals("f")||Text.equals("d")||Text.equals("s")||Text.equals("p")
    ||Text.equals("m")||Text.equals("h")||Text.equals("j")||Text.equals("k")||Text.equals("l")
    ||Text.equals("n")||Text.equals("b")||Text.equals("v")||Text.equals("c")||Text.equals("x")||Text.equals("z")) {
    return true;
  } else {
    return false;
  }
}
