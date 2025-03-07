<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Explain how your project works

DESCRIPCION:
Un circuito combinacional que actue como un cifrador de 8 bits puede resolver varios problemas de seguridad y comunicacion, debido a que ayuda cifrar informacion sensible, asegurando que solo las personas autorizadas puedan acceder a ella, asi como tambien asegura que los datos no sean alterados durante una transmision, ya que cualquier modificacion seria detectada al decifrar. Esta tipo de cifrado no es seguro para aplicaciones criptograficas reales, pero es util entender el proceso de diseño de un circuito combinacional y cifrado de datos, permitiendo servir como guia para entender las bases de estos conceptos e impulsar el crecimiento.

IMAGEN  
![Captura de pantalla 2025-03-06 233814](https://github.com/user-attachments/assets/4b1b027f-c409-4d35-acf0-1afb9963da7f)

El circuito tomará una entrada de 8 bits (A_7 A_6 A_5 A_4 A_3 A_2 A_1 A_0) y producirá una salida de 8 bits (Y_7 Y_6 Y_5 Y_4 Y_3 Y_2 Y_1 Y_0)) cifrada. Habrá dos mallas y cada malla tiene 4 compuertas AND, pero las salidas se combinan para generar solo 3 salidas por medio de compuertas OR cada malla tendrá como resultado un valor de 3 bits que se unirán sin sumarse para formar un valor de 8 bits que se mandara al sumador de 8 bits (2 sumadores de 4 bits escalonados) y la salida será de 8 bits ya cifrado.

COMPUERTAS LOGICAS IMAGEN
![Captura de pantalla 2025-03-06 234233](https://github.com/user-attachments/assets/a4a64073-79b5-496e-b9d2-506c6068509a)

## How to test


El circuito no cuenta con una clave de cifrado las 8 entradas pasan por las compuertas AND Y OR para ser cifradas, por simplicidad el proceso de cifrado se basa únicamente en la lógica combinacional de las compuertas y por lo tanto el cifrado es una transformacion fija de las entradas y salidas sin depender de una clave externa.
 



## How to test

Explain how to use your project
El circuito combinacional de 8 bits sin clave de cifrado, en las 8 entradas ingresan 8 bits de datos y pasan por cada compuerta AND y realiza la operación AND, las entradas a las compuertas AND son combinaciones de  bits de entrada, los resultados de las compuertas AND son combinadas por las compuertas OR para producir un valor de 3 bits, por cada maya, para despues unirse y formar un valor de 6 bits, despues se realiza una extension a 8 bits agregrando dos valores en 0, despues el sumador de 8 bits, calcula la suma de las entradas originales, con el valor extendido de 8 bits.

IMAGENES COMPUERTAS MALLA AND 1 Y 2
![Captura de pantalla 2025-03-06 234507](https://github.com/user-attachments/assets/d568651b-3144-4cbc-b480-af36c38661e3)

![Captura de pantalla 2025-03-06 234530](https://github.com/user-attachments/assets/6a68e3c2-4550-4995-931a-0d41352d6eb1)
![Captura de pantalla 2025-03-06 234545](https://github.com/user-attachments/assets/80731593-1f70-4e1e-92f9-692e0fa509fb)
COMPUERTAS DE MALLA OR 1 Y 2

![Captura de pantalla 2025-03-06 234537](https://github.com/user-attachments/assets/74daa3f9-2860-4a14-9293-c90bf681d775)
![Captura de pantalla 2025-03-06 234554](https://github.com/user-attachments/assets/62f61212-6c39-446b-9787-d2b21526fa9a)



## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
El circuito combinacional cifrador de 8 bits, no necesita hardware externo para funcionar, debido a que es un diseño puramente digital que opera con señales de entrada y de salida.
