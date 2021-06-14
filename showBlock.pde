
float showBlockY = 40;

void show_block(int n) {
  rect(b_w * n, showBlockY, b_w, b_h);
  image(blockImg, b_w * n, showBlockY);//for New
  blockImg.resize((int)b_w, (int)b_h);//fix size of window size
  text(hit[n], b_w * n, showBlockY);
}
