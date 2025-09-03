recomendacion(usuario, Precomendado):- 

calificacion(Usuario, Producto, Nota), 

nota >=3, 

tipoproducto(Producto, Tipo), 

tipoproducto(Precomendado, Tipo), 

Producto \= Precomendado, 

\+ compra(Usuario, Precomendado). 








recomendacion(Usuario, Precomendado):- 

compra(Usuario,Producto), 

categoriaproducto(Producto, Categoria), 

categoriaproducto(Precomendado, Categoria), 

precio(Producto, Precio1), 

precio(Precomendado, Precio2), 

Precio2 =< Precio1, 

Producto \= Precomendado, 

\+ compra(Usuario, Precomendado). 








lista_recomendaciones(Usuario, Lista) :- 

findall(Precomendado, recomendacion(Usuario, Precomendado), L), 

findall(Precomendado, comprarecomendacion(Usuario, Precomendado), L), 

sort(L, Lista).  





gusta(Usuario, Producto) :- 

    calificacion(Usuario, Producto, Nota), 

    Nota >=3. 

recomendacion_recursiva(Usuario1, Producto2) :-  

    recomendacion_recursiva(Usuario1, Producto2, [Usuario1]). 





recomendacion_recursiva(Usuario1, Producto2, Visitados) :- 

    gusta(Usuario1, Producto1), 

    gusta(Usuario2, Producto1), 

    Usuario1 \= Usuario2, 

    \+ member(Usuario2, Visitados), 

    gusta(Usuario2, Producto2), 

    Producto1 \= Producto2, 

    \+ compra(Usuario1, Producto2). 






recomendacion_recursiva(Usuario1, Producto2, Visitados) :-  

    gusta(Usuario1, Producto1), 

    gusta(Usuario2, Producto1), 

    Usuario1 \= Usuario2, 

    \+ member(Usuario2, Visitados), 

   recomendacion_recursiva(Usuario2, Producto2, [Usuario2|Visitados]), 

    \+ compra(Usuario1, Producto2) 








gustos_usuario(Usuario, Lista) :- 

    findall(Producto, gusta(Usuario, Producto), L), 

    sort(L, Lista). 

 

top10_usuario(Usuario, Top10) :- 

    gustos_usuario(Usuario, Lista), 

    length(Lista, Len), 

    ( Len =< 10 -> Top10 = Lista 

    ; length(Top10, 10), 

      append(Top10, _, Lista) 

    ). 

 

top10_lista_usuarios([], []). 

 top10_lista_usuarios([Usuario|Usuarios], [(Usuario,Top)|Resto]) :-  

top10_usuario(Usuario, Top),  

top10_lista_usuarios(Usuarios, Resto). 
