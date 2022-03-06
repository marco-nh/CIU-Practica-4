//Autor: Marco Nehuen Hernández Abba
//importar animacion
import gifAnimation.*;


//rotacion general
float rotacion;
float rotacion2;
float rotacion3;
float rotacion4;

PShape planeta1;
PShape planeta2;
PShape planeta3;
PShape planeta4;
PShape planeta5;

PShape satelite1;
PShape satelite2;

PShape centro;
PImage img;
PImage bg;


int opcion;
int distancia;

//primero angulo, segundo distancia
boolean[] sum;

boolean nave;

//posicion
float posX;
float posY;
float posZ;

float ang;
float ang2;
//grabar
GifMaker ficherogif;


void setup(){
  size(1000,500,P3D);
  background(0);
  stroke(0);
  rotacion = 0;
  rotacion2 = 0;
  
  opcion = -45;
  distancia = -100;
  sum = new boolean[7];
  nave = false;
  
  //centro
  print("Cargando centro...");
  centro = createShape(SPHERE,50);
  centro.setStroke(255);
  
  img = loadImage("centro.png");
  centro.setTexture(img);

  //planeta1
  print("Cargando planetas...");
  
  planeta1 = createShape(SPHERE,20);
  planeta1.setStroke(255);
  
  img = loadImage("planeta1.png");
  planeta1.setTexture(img);
  
  //planeta2
  
  
  planeta2 = createShape(SPHERE,30);
  planeta2.setStroke(255);
  
  img = loadImage("planeta2.png");
  planeta2.setTexture(img);
  
  //planeta3
  
  
  planeta3 = createShape(SPHERE,20);
  planeta3.setStroke(255);
  
  img = loadImage("planeta3.PNG");
  planeta3.setTexture(img);
  //planeta4
  
  
  planeta4 = createShape(SPHERE,10);
  planeta4.setStroke(255);
  
  img = loadImage("planeta4.jpg");
  planeta4.setTexture(img);
  //planeta5
  
  
  planeta5 = createShape(SPHERE,60);
  planeta5.setStroke(255);
  
  img = loadImage("planeta5.jpg");
  planeta5.setTexture(img);
  
  //satelite1
  satelite1 = createShape(SPHERE,5);
  satelite1.setStroke(255);
  
  img = loadImage("satelite.jpg");
  satelite1.setTexture(img);
  
  
  //satelite2
  satelite2 = createShape(SPHERE,10);
  satelite2.setStroke(255);
  
  img = loadImage("satelite2.jpg");
  satelite2.setTexture(img);
  
  //cargar imagen
  bg = loadImage("fondo.jpg");
  
  //gif
  //ficherogif = new GifMaker(this, "animacion.gif");
  //ficherogif.setRepeat(0);        // anima sin fin
  
}

void draw(){
  background(bg);
  if(!sum[6]){

  pushMatrix();
  textSize(20);
  text("Flechas Direccionales - Mover Nave",20,20);
   text("W/S - Arrancar/Parar Nave",20,40);
  text("A - Alternar camara",20,60);
  popMatrix();
  }
  
  
  if(!nave){
    posX = mouseX;
    posY = mouseY;
    posZ = -200;
    text("Selecciona donde poner la nave",width/2,20);
  } else{
    if(!sum[4]){
      posX = posX+sin(ang);
      posY = posY+cos(ang);
    }
  }
  pushMatrix();
  translate(posX,posY,posZ);
  rotateZ(-ang);
  box(20);
  popMatrix();
  
  if(sum[0]) {posZ += cos(PI/100);
  ang2 += PI/100;
  }
  if(sum[1]) ang += PI/100;
  if(sum[2]) ang -= PI/100;
  if(sum[3]) {posZ -= cos(PI/100);
  ang2 += PI/100;
  }


  if(sum[6]){
    beginCamera();
    camera(posX,posY,posZ,posX+sin(ang)*500,posY+cos(ang)*500,posZ+sin(ang2),0,0,-1);
    endCamera();
  }
  else camera();
  
  pract3();
}

void keyPressed(){
  if (keyCode == UP){
    sum[0] = true;
  }
  if (keyCode == RIGHT){
    sum[1] = true;
  }
  if (keyCode == LEFT){
    sum[2] = true;
  }
  if (keyCode == DOWN){
    sum[3] = true;  
  }
  if(key == 'W' || key == 'w'){
    if(sum[4]) sum[4] = false; 
  }
  if(key == 'S' || key == 's'){
    sum[4] = true; 
  }
  if(key == 'A' || key == 'a'){
    if(nave){
      if(!sum[6]) sum[6] = true; 
      else sum[6] = false;
    }
    
    
  }
}
void keyReleased(){
  if (keyCode == UP){
    sum[0] = false;
  }
  if (keyCode == RIGHT){
    sum[1] = false;
  }
  if (keyCode == LEFT){
    sum[2] = false;
  }
  if (keyCode == DOWN){
    sum[3] = false;  
  }
}

void mousePressed(){
  nave = true;  
}


void pract3(){
  
  
  
  translate(width/2, height/2,distancia);
  
  
  rotateX(radians(opcion));

  shape(centro); 
  //p1
  pushMatrix();
  
  rotateZ(radians(rotacion2));
  translate(100, 0,0);
  //primero el planeta, luego el texto para quitarle la rotación
  shape(planeta1);
  //texto
  pushMatrix();
  textSize(20);
  rotateZ(-radians(rotacion2));
  text("Reda",10,-30);
  popMatrix();
  
  //satelite 1
  rotateZ(radians(rotacion4));
  rotateX(radians(rotacion4));
  translate(40,0,0);
  
  
  shape(satelite1);
  rotateX(-radians(rotacion4));
  rotateZ(-radians(rotacion4));
  rotateZ(-radians(rotacion2));
 
  textSize(10);
  text("RR14",10,-10);
  popMatrix();
  
  //p2
  pushMatrix();
  rotateY(radians(rotacion3));
  translate(250, 0,0);

  shape(planeta2);
  rotateY(-radians(rotacion3));
  
  text("Verd",10,-40);
  
  popMatrix();
  
  //p3
  pushMatrix();
  rotateZ(radians(rotacion3));
  translate(0, 300,0);
  
 
  shape(planeta3);
  rotateZ(-radians(rotacion3));
  text("Marro",10,-30);
  
  
  popMatrix();
  
  //p4
  pushMatrix();
  rotateY(radians(rotacion4));
  translate(200, 0,200);
  
  
  shape(planeta4);
  rotateY(-radians(rotacion4));
  text("Tox",10,-30);
  
  popMatrix();
  
  //p5
  pushMatrix();
  
  
  rotateY(radians(rotacion));
  rotateZ(radians(rotacion4));
  translate(500, 0,0);
  
  
  shape(planeta5);
  rotateZ(radians(-rotacion4));
  rotateY(radians(-rotacion));
  
  textSize(40);
  text("Gran",10,-60);
  
  //satelite 2
  rotateY(radians(rotacion4));
  translate(100,0,0);
  
  
  shape(satelite2);
  textSize(20);
  rotateY(-radians(rotacion4));
  text("Mim",10,-20);
  
  popMatrix();
  
  
  
  
  rotacion += 0.1;
  rotacion2 += 0.2;
  rotacion3 += 0.3;
  rotacion4 += 0.5;
  if (rotacion > 360){
    rotacion = 0;
  }
  if (rotacion2 > 360){
    rotacion2 = 0;  
  }
  if (rotacion3 > 360){
    rotacion3 = 0;  
  }
  if (rotacion4 > 360){
    rotacion4 = 0;  
  }
  
  
  
  //ficherogif.setDelay(1000/60);
  //ficherogif.addFrame();
}
