 
 /*refarence URL: https://bit.ly/3phDS5x      */
 PImage backImg; 
 PImage blockImg; 
 
 void loadBackGround(){
   
  //for Background Load
  backImg = loadImage("background.png");
  backImg.resize( width, height );//fix size of window size
  
  //
  blockImg = loadImage("hosi.png");
  //blockImg.resize(b_w, b_h);//fix size of window size

 }
