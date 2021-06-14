//new 

/*Refalense AudioSample URL: https://r-dimension.xsrv.jp/classes_j/minim/    */

/*Refalense setGain URL: https://bit.ly/3pdKJNo    */

/*Refalense AudioSample URL:   http://www.sato-lab.jp/imfu2012/text11*/

AudioPlayer BGM;//BGM
AudioSample blockHitSE;//Audio Smaple is for SE 
AudioSample breakBlock;//SE 
AudioSample gameClear;//SE

float SEVolume = -5.0;
float BGMVolume = -10.0;

void loadAllMusicFile(){
  //BGM
  BGM = minim.loadFile("bgm.mp3");
  BGM.setGain(BGMVolume);//6~-80
  BGM.play();
  
  //SE
  blockHitSE = minim.loadSample("hit.mp3");
  blockHitSE.setGain(SEVolume);//6~-80
  
  breakBlock = minim.loadSample("break.mp3");
  breakBlock.setGain(SEVolume);//6~-80
  
  gameClear = minim.loadSample("finish.mp3");
  gameClear.setGain(SEVolume);//6~-80
}


void stop(){

  //player.close();  //サウンドデータを終了
  minim.stop();
  super.stop();
}
