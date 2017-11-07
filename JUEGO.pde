// Mauricio Zúñiga Bernal
// Nota: Mi segundo personaje desaparece :( no encontré forma de solucionar eso.

import ddf.minim.*;

Minim minim;
Minim gestor;
AudioPlayer musica_fondo;

ArrayList<particula>particulas;

int screen;
int hp1 = 100;
int hp2 = 100;
int a1 = 10;
int a2 = 5;
int a3 = 10;
int a4 = 10;
int turno = 0;
PImage m1;
PImage m2;
PImage m3;
PImage m4;
PImage m5;
PImage m6;
PImage vs;
PImage logo;

criatura uno;
criatura dos;
criatura tres;
criatura cuatro;
criatura cinco;
criatura seis;

void setup()
{
  uno = new criatura(100, 10, 15, "uno");
  dos = new criatura(100, 8, 10, "dos");
  tres = new criatura(100, 10, 20, "tres");
  cuatro = new criatura(100, 15, 25, "cuatro");
  cinco = new criatura(100, 50, 100, "cinco");
  seis = new criatura(100, 10, 20, "seis");

  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("musiquita.mp3");
  musica_fondo.setGain(-2);
  musica_fondo.loop();

  size(900, 700);
  particulas = new ArrayList<particula>();
  for (int i=0; i<250; i++) {
    particulas.add(new particula());
  }
  m1 = loadImage("m1.png");
  m2 = loadImage("m2.png");
  m3 = loadImage("m3.png");
  m4 = loadImage("m4.png");
  m5 = loadImage("m5.png");
  m6 = loadImage("m6.png");
  vs = loadImage("VS.png");
  logo = loadImage("logo.png");

  screen = 1;
}
void draw() {
  background(255);
  for (particula p : particulas) {
    p.display();
    p.movimiento();
  }

  if (screen==1) {
    {
      textAlign(CENTER);
      textSize(50);
      fill(0,0,255);
      text("CRIATUREISHON FIGHTING", 450, 100);
      textSize(45);
      fill(0,0,255);
      text("COMENZAR CON E", 450, 600);
      image(logo,125,50);

      if (key == 'e') {
        screen = 2;
      }
    }
  }
  if (screen==2) {
    fill(#000000);
    {
      image(m1, 50, 80);
      image(m2, 350, 80);
      image(m4, 650, 80);
      image(m3, 50, 400);
      image(m5, 350, 400);
      image(m6, 650, 400);
    }
    fill(0);
    noStroke();
    textSize(20);
    fill(0,0,255);
    text("ELIGE TU CRIATURA CON: A S D F G", 450, 50);
    text("Sub-Zero", 50, 100);
    text("Reptile", 350, 100);
    text("Ermac", 50, 450);
    text("Scorpion", 650, 100);
    text("Rain", 350, 450);
    text("Noob Saibot", 650, 450);
  } 
  if (key == 'a')
  {
    screen = 3;
  }
  if (screen == 3)
  {
    noFill();
    noStroke();
    rect(635, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(635, 200, hp1, 20);

    noFill();
    noStroke();
    rect(160, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(160, 200, hp2, 20);

    image(vs, 335, 65);
    image(m1, 85, 250);
    fill(0,0,255);
    text("ELIGE OTRA CRIATURA WUUU! CON: T Y U I O", 450, 50);
    text("CRIATURA 1: ATACA CON 2", 200, 550);
    text("CRIATURA 2: ATACA CON 3", 675, 550);
    if (hp1 <=0 || hp2 <=0) {
      fill(random(255));
      text("REINICIAR CON R", 450, 650);
    }
    if (hp1 <=0 ) {
    fill(0,0,255);
    text("GAME OVER! CRIATURA 1 WINS", 450, 600);
    }
    if (hp2 <=0 ) {
    fill(0,0,255);
      text("GAME OVER! CRIATURA 2 WINS", 450, 600);
    }
    fill(255);
    if (key == 't')
    {
      image(m1, 560, 250);
    }
    if (key == 'y')
    {
      image(m2, 560, 250);
    }
    if (key == 'u')
    {
      image(m3, 560, 250);
    }
    if (key == 'i')
    {
      image(m4, 560, 250);
    }
    if (key == 'o')
    {
      image(m5, 560, 250);
    }
    if (key == 'p')
    {
      image(m6, 560, 250);
    }
    if (key == 'r') {
      background(#0099CC);
      screen = 1;
    }
    if (screen == 1) {
      hp1=100;
      hp2=100;
    }
  }

  if (key == 's')
  {
    screen = 4;
  }
  if (screen == 4)
  {

    noFill();
    noStroke();
    rect(635, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(635, 200, hp1, 20);

    noFill();
    noStroke();
    rect(160, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(160, 200, hp2, 20);

    image(vs, 335, 65);
    image(m2, 85, 250);
    fill(0,0,255);
    text("ELIGE OTRA CRIATURA WUUU! CON: T Y U I O", 450, 50);
    text("CRIATURA 1: ATACA CON 2", 200, 550);
    text("CRIATURA 2: ATACA CON 3", 675, 550);
    if (hp1 <=0 || hp2 <=0) {
      fill(random(255));
      text("REINICIAR CON R", 450, 650);
    }
    if (hp1 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 1 WINS", 450, 600);
    }
    if (hp2 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 2 WINS", 450, 600);
    }
    fill(255);
    if (key == 't')
    {
      image(m5, 560, 250);
    }
    if (key == 'y')
    {
      image(m2, 560, 250);
    }
    if (key == 'u')
    {
      image(m3, 560, 250);
    }
    if (key == 'i')
    {
      image(m4, 560, 250);
    }
    if (key == 'o')
    {
      image(m1, 560, 250);
    }
    if (key == 'p')
    {
      image(m6, 560, 250);
    }
    if (key == 'r') {
      background(#0099CC);
      screen = 1;
    }
    if (screen == 1) {
      hp1=100;
      hp2=100;
    }
  }

  if (key == 'd')
  {
    screen = 5;
  }
  if (screen == 5)
  {

    noFill();
    noStroke();
    rect(635, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(635, 200, hp1, 20);

    noFill();
    noStroke();
    rect(160, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(160, 200, hp2, 20);

    image(vs, 335, 65);
    image(m3, 85, 250);
    fill(0,0,255);
    text("ELIGE OTRA CRIATURA WUUU! CON: T Y U I O", 450, 50);
    text("CRIATURA 1: ATACA CON 2", 200, 550);
    text("CRIATURA 2: ATACA CON 3", 675, 550);
    if (hp1 <=0 || hp2 <=0) {
      fill(random(255));
      text("REINICIAR CON R", 450, 650);
    }
    if (hp1 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 1 WINS", 450, 600);
    }
    if (hp2 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 2 WINS", 450, 600);
    }
    fill(255);
    if (key == 't')
    {
      image(m5, 560, 250);
    }
    if (key == 'y')
    {
      image(m2, 560, 250);
    }
    if (key == 'u')
    {
      image(m3, 560, 250);
    }
    if (key == 'i')
    {
      image(m4, 560, 250);
    }
    if (key == 'o')
    {
      image(m1, 560, 250);
    }
    if (key == 'p')
    {
      image(m6, 560, 250);
    }
    if (key == 'r') {
      screen = 1;
    }
    if (screen == 1) {
      hp1=100;
      hp2=100;
    }
  }

  if (key == 'f')
  {
    screen = 6;
  }
  if (screen == 6)
  {
    noFill();
    noStroke();
    rect(635, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(635, 200, hp1, 20);

    noFill();
    noStroke();
    rect(160, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(160, 200, hp2, 20);

    image(vs, 335, 65);
    image(m4, 85, 250); 
    fill(0,0,255);
    text("ELIGE OTRA CRIATURA WUUU! CON: T Y U I O", 450, 50);
    text("CRIATURA 1: ATACA CON 2", 200, 550);
    text("CRIATURA 2: ATACA CON 3", 675, 550);
    if (hp1 <=0 || hp2 <=0) {
      fill(random(255));
      text("REINICIAR CON R", 450, 650);
    }
    if (hp1 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 1 WINS", 450, 600);
    }
    if (hp2 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 2 WINS", 450, 600);
    }
    fill(255);
    if (key == 't')
    {
      image(m5, 560, 250);
    }
    if (key == 'y')
    {
      image(m2, 560, 250);
    }
    if (key == 'u')
    {
      image(m3, 560, 250);
    }
    if (key == 'i')
    {
      image(m4, 560, 250);
    }
    if (key == 'o')
    {
      image(m1, 560, 250);
    }
    if (key == 'p')
    {
      image(m6, 560, 250);
    }
    if (key == 'r') {
      background(#0099CC);
      screen = 1;
    }
    if (screen == 1) {
      hp1=100;
      hp2=100;
    }
  }
  if (key == 'g')
  {
    screen = 7;
  }
  if (screen == 7)
  {
    noFill();
    noStroke();
    rect(635, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(635, 200, hp1, 20);

    noFill();
    noStroke();
    rect(160, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(160, 200, hp2, 20);

    image(vs, 335, 65);
    image(m5, 85, 250); 
    fill(0,0,255);
    text("ELIGE OTRA CRIATURA WUUU! CON: T Y U I O", 450, 50);
    text("CRIATURA 1: ATACA CON 2", 200, 550);
    text("CRIATURA 2: ATACA CON 3", 675, 550);
    if (hp1 <=0 || hp2 <=0) {
      fill(random(255));
      text("REINICIAR CON R", 450, 650);
    }
    if (hp1 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 1 WINS", 450, 600);
    }
    if (hp2 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 2 WINS", 450, 600);
    }
    fill(255);
    if (key == 't')
    {
      image(m5, 560, 250);
    }
    if (key == 'y')
    {
      image(m2, 560, 250);
    }
    if (key == 'u')
    {
      image(m3, 560, 250);
    }
    if (key == 'i')
    {
      image(m4, 560, 250);
    }
    if (key == 'o')
    {
      image(m1, 560, 250);
    }
    if (key == 'p')
    {
      image(m6, 560, 250);
    }
    if (key == 'r') {
      background(#0099CC);
      screen = 1;
    }
    if (screen == 1) {
      hp1=100;
      hp2=100;
    }
  }

  if (key == 'h')
  {
    screen = 8;
  }
  if (screen == 8)
  {

    noFill();
    noStroke();
    rect(635, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(635, 200, hp1, 20);

    noFill();
    noStroke();
    rect(160, 200, 120, 20);

    fill(0,255,0);
    noStroke();
    rect(160, 200, hp2, 20);

    image(vs, 335, 65);
    image(m6, 85, 250);
    fill(0,0,255);
    text("ELIGE OTRA CRIATURA WUUU! CON: T Y U I O", 450, 50);
    text("CRIATURA 1: ATACA CON 2", 200, 550);
    text("CRIATURA 2: ATACA CON 3", 675, 550);
    if (hp1 <=0 || hp2 <=0) {
      fill(random(255));
      text("REINICIAR CON R", 450, 650);
    }
    if (hp1 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 1 WINS", 450, 600);
    }
    if (hp2 <=0 ) {
      fill(0,0,255);
      text("GAME OVER! CRIATURA 2 WINS", 450, 600);
    }
    fill(255);
    if (key == 't')
    {
      image(m5, 560, 250);
    }
    if (key == 'y')
    {
      image(m2, 560, 250);
    }
    if (key == 'u')
    {
      image(m3, 560, 250);
    }
    if (key == 'i')
    {
      image(m4, 560, 250);
    }
    if (key == 'o')
    {
      image(m1, 560, 250);
    }
    if (key == 'p')
    {
      image(m6, 560, 250);
    }
    if (key == 'r') {
      background(#0099CC);
      screen = 1;
    }
    if (screen == 1) {
      hp1=100;
      hp2=100;
    }
  }
}

void keyReleased()
{
  {
    if (hp1 > 0 && hp2 > 0 && turno == 0&& key == '2')
    {
      gestor = new Minim(this);
      //No me salió esto :c 
      musica_fondo = gestor.loadFile("G1.wav");
      musica_fondo.setGain(-5);
      hp1 -= a1;
      turno += 1;
    }
  }
  {
    if (hp1 > 0 && hp2 > 0 && turno == 1&& key == '3')
    {
      gestor = new Minim(this);
      musica_fondo = gestor.loadFile("G2.wav");
      musica_fondo.setGain(-5);
      hp2 -=a3;
      turno -=1;
    }
  }
}

class particula {
  float x, y, v, a, t;
  color c;

  particula(float x_, float y_, float v_, float a_, float t_, color c_) {
    x = x_;
    y = y_;
    v = v_;
    a = a_;
    t = t_;  
    c = c_;
  }

  particula() {
    x = random(900);
    y = random(700);
    v = random(10);
    a = random(TWO_PI);
    t = random(1, 30);
    c = color(random(255), 0, 0);
  }

  void display() {
    pushMatrix();
    translate(x, y);
    noStroke();
    fill(c);
    ellipse(0, 0, t, t);
    popMatrix();
  }
  void movimiento(){
    x=x+v*sin(a);
    y=y+v*sin(a);

if(x>=0){
a*=-1;}
if(x<=900){
a*=-1;}
if(y>=0){
a*=-1;}
if(y<=700){
a*=-1;}
  }
}

class criatura
{
  int hp;
  int a1;
  int a2;
  String nombre;
  criatura(int hp_, int a1_, int a2_, String nombre_)
  {
    hp = hp_;
    a1 = a1_;
    a2 = a2_;
    nombre = nombre_;
  }
}