# Contador-FM

Hola Profe!!1!11!!!! Espero este teniendo un buen fin de semana, le hago entrega de mi contador Soy Fabrizio Marchioro Rojas C.I. 31256881

El contador en si es bastante simple, cumple con las especificaciones requeridas de la actividada y tiene un diseño bastante sencillo pero diria que a su modo llamativo, me inspire en mi serie favorita que seria Neon Genesis Evangelion y le di los colores del eva 01.

El proyecto esta realizado en tres archivos diferentes, el main dart que ejecuta el programa, es quien lee los temas y los aplica y define las rutas de las ventanas.

Home Screen es el archivo donde se encuentra la funcionalidad de nuestro contador, en este se encuentra la logica del programa mediante _increment, _decrement, _multiply, _reset. Se maneja el valor del contador y del slider, donde se construye, esto gracias a StatefulWidget porque el valor del contador cambia. Ademas el contador se maneja de manera local con (_counter) y el valor del slider (_sliderValue) en su "estado".

Se actuliza el ui, ambos mediante el Scaffold, el AppBar, el Slider, el texto del contador y todos los botones, y con setState() se "redibuja" la pantalla cada vez que el contador cambia. 

Tambien es la ventana a donde entramos a los datos del desarrollador con Navigator.pushNamed(context, 'info'), en esta ventana queria aplicar un selector o algo del estilo para poder cambiar el tema de la aplicacion pero me complique de mas.

Seguiriamos con Info Screen que nos da la informacion del desarrollador, esta ventana es solo de lectura ya que nada cambia. Esta ventana trabaja de manera fija con Scaffold, la Card, y el CircleAvatar para mostrar los datos. Tambien mostramos una imagen (escogida por el usuario) con AssetImage('assets/images/tu_foto.jpg') y tenemos un boton para regresar al contador. Para esta parte se tuvo que modificar pubsspec y crear una carpeta de assets (con la cual tuve ciertos problemas por la identacion).

Esta actividad me parecio muy divertida y entretenida, tuve que pasarme a mi laptop para terminar fuera de casa y no tenia flutter, al ser mi laptop muy lenta me toco aprender a usar mi telefono para poder probar la app y debo decir que siento que es mas comodo que usar un virtual.

Sin nada mas que agregar espero le guste (por mas simple que sea).