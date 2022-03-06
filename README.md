# Memoria Practica 4 CIU - Sistema Planetario con Nave
 Creado por Marco Nehuen Hernández Abba
 
![fig](https://user-images.githubusercontent.com/47418876/156947096-3b89e4f1-8897-487b-a334-44d523b096d4.gif)

 ### Contenido
- Trabajo realizado
- Herramientas y Referencias

## Trabajo realizado
Las dos partes que habia que realizar, la nave y la camara.
La nave esta hecha con un movimiento en XY circular y Z constante si se pulsan las teclas.

![image](https://user-images.githubusercontent.com/47418876/156946722-0ae2ae84-7cff-4602-9912-2026954962c7.png)

```
if(!nave){
   ...
  } else{
    if(!sum[4]){
      posX = posX+sin(ang);
      posY = posY+cos(ang);
    }
  }
  ...
  translate(posX,posY,posZ);
  ...
  
  if(sum[0]) {posZ += cos(PI/100);
  ang2 += PI/100;
  }
  if(sum[1]) ang += PI/100;
  if(sum[2]) ang -= PI/100;
  if(sum[3]) {posZ -= cos(PI/100);
  ang2 += PI/100;
  }
```
Hay dos camaras, la base, en la que se ve la nave y el resto de planetas, y la de nave, la cual puedes ver si vas moviendo la nave los planetas
moviendose, los controles estan en la camara normal.


## Herramientas y Referencias
**Herramientas**
[EZGif](https://ezgif.com/): Alternativa para hacer gif con facilidad

**Referencias**

 [Explicación practica 4](https://github.com/otsedom/otsedom.github.io/blob/main/CIU/P4/README.md)
 
 [Texturas planetas sistema solar](https://www.google.com/search?q=textura+planeta&tbm=isch&ved=2ahUKEwiF8o3O06H2AhVn_bsIHZiqAl0Q2-cCegQIABAA&oq=textura+planeta&gs_lcp=CgNpbWcQAzIHCCMQ7wMQJzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDoECAAQQzoGCAAQCBAeOggIABCABBCxA1CcBVi3EmD6EmgAcAB4AYAB1AGIAcIJkgEGMTIuMC4xmAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=7lscYoXDHOf67_UPmNWK6AU&bih=909&biw=1920#imgrc=wBp6c6ZrDlkTWM)
 
 [Texturas planetas rocosas](https://www.google.com/search?q=textura+rocosa&sxsrf=APq-WBsEyrVP2PJWXd9LN0dmp_JSuflCvw:1646025650648&source=lnms&tbm=isch&sa=X&ved=2ahUKEwi-v8qx06H2AhWmyYUKHTMAC94Q_AUoAXoECAEQAw&biw=1920&bih=909&dpr=1#imgrc=ei2FILxdzOyOvM)
