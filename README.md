#               :large_orange_diamond: Proyecto POO Tangram  :large_orange_diamond:


En este proyecto se desarrollará un tangram haciendo uso de [processing](https://processing.org/). 

Para identificar la ventaja ofrecida por la programación orientada a objetos se realizó en una primera
instancia el mismo proyecto con el paradigma de la programación estructurada, identificando así ventajas
entre los dos paradigmas.

## Programación estructurada

Todo el código de este componente se encuentra en la primer carpeta de este repositorio, dicho prototipo cuenta con las siguientes características:

1. Disposición de las piezas en la pantalla.
2. Manipulación de las mismas por medio del teclado y el mouse.
3. Comprobación de la condición de victoria.

Otros detalles a tener en cuenta de esta versión:

1. No se logró implementar por completo la manipulación por medio del teclado, por lo que para la selección de las piezas es necesario hacer uso del mouse.
2. La generación de un nivel se hace por medio de la instrucción [load image](https://processing.org/reference/loadImage_.html) lo cual conlleva a que el guardado de los niveles se haga por medio de una imagen que conserva la posición de las piezas en un momento dado.

## Programación orientada a objetos

El prototipo desarrollado en este paradigma se encuentra en la carpeta *Objetos*, para esta segunda parte se decidió desarrollar el código tanto en ***Java*** como en ***Processing***, para ambas versiones se agregaron unas características nuevas a las que se habían logrado con la programación estructurada:

0. Todo lo logrado con la programación estructurada.
1. La posibilidad de crear un nivel propio.
2. El guardado y la presentación del nivel por medio de los archivos JSON.
3. Rotación especial de las piezas (Rotar alrededor del eje x)
4. El movimiento de las piezas por medio de las teclas (*A*,*S*,*D*,*W*)


Aparte de la documentación de processing también se utilizó [este repositorio](https://github.com/objetos/TangramRosetta) para la realización del proyecto.
# Documentation

## `interface QueueGen<T>`

Cola Array ( Queue )

Estructura basada en arrays, Consta de 1 array.

## `public T dequeue()`

saca un elemento. Maneja Excepción de espacio.

 * **Parameters:** `{}.` — 
 * **Returns:** {Type} - Éxito del proceso. 

     <p>

## `public void enqueue(T item)`

inserta un elemento. Maneja Excepción de espacio.

 * **Parameters:** `{Type}.` — 
 * **Returns:** {} -Exito del proceso. 

     <p>

## `public boolean isEmpty()`

retorna si la cola esta vacia o no.

 * **Parameters:** `{}.` — 
 * **Returns:** {Boolean} -esta vacia. 

     <p>

## `public boolean isFull()`

retorna si la cola esta llena o no.

 * **Parameters:** `{}.` — 
 * **Returns:** {Boolean} -esta llena. 

     <p>

## `public int numInside()`

retorna la cantidad de elementos en la cola.

 * **Parameters:** `{}.` — 
 * **Returns:** {Intiger} -numero elementos en la cola. 

     <p>
