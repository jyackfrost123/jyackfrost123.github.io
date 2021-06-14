
boolean checkHit(float x, float y) {
  if (y + a_h < 250) return false;//ボールの高さ＋ボールの左上
    
  if (x + a_w >= mouseX && x <= mouseX + r_w) {//ボールの左上＋ボール幅
    return true;
  } else {
    return false;
  }
}


int checkHitBlock(int n, float x, float y) {
  float left   = b_w * n;
  float right  = b_w * (n + 1);
  float top    = showBlockY;
  float bottom = showBlockY + b_h;
  float cx = left + b_w / 2;
  float cy = top + b_h / 2;
  float y1, y2;
  
  if ((x + a_w <= left) ||
      (x >= right) ||
      (y + a_h <= top) ||
      (y >= bottom)) {
        return 0;
      }
      
   x = x + a_w / 2;
   y = y + a_h / 2;

   y1 = y - (-(x - cx)* b_h / b_w + cy);
   y2 = y - ( (x - cx)* b_h / b_w + cy);
   
   if (y1 > 0) {
     if (y2 > 0) {
       return 1;
     } else if (y2 == 0) {
       return 2;
     } else {
       return 3;
     }
   } else if (y1 < 0) {
     if (y2 > 0) {
       return 7;
     } else if (y2 == 0) {
       return 6;
     } else {
       return 5;
     }
   } else {
     if (y2 > 0) {
       return 8;
     } else if (y2 == 0) {
       return -1;
     } else {
       return 4;
     }
   }
}
