usuario(juan, nuevo).
usuario(maria, frecuente).
usuario(andres, preferencial).
usuario(camilo, frecuente).
usuario(jacobo, nuevo).
usuario(mariana, preferencial).

producto(p1, televisor_hd,         electronica,       estandar,     1500000).
producto(p2, audifonos_bt,         electronica,       promocional,   120000).
producto(p3, aspiradora_robot,     hogar,             preferencial,  800000).
producto(p4, camisa_algodon,       ropa,              promocional,    90000).
producto(p5, nevera_no_frost,      electrodomesticos, preferencial, 2400000).
producto(p6, licuadora_pro,        electrodomesticos, estandar,      350000).
producto(p7, detergente_ecologico, aseo,              estandar,       45000).
producto(p8, cepillo_electrico,    aseo,              promocional,    70000).
producto(p9, laptop_ultra,         electronica,       preferencial, 3600000).
producto(p10, sanduchera_2en1,     electrodomesticos, promocional,   180000).
producto(p11, mantel_antimanchas,  hogar,             estandar,       60000).
producto(p12, chaqueta_impermeable,ropa,              preferencial,  280000).
producto(p13, smartwatch_deportivo,electronica,       promocional,   500000).
producto(p14, horno_microondas,    electrodomesticos, estandar,      700000).
producto(p15, shampoo_organico,    aseo,              preferencial,   30000).

compra(juan, p1).
compra(juan, p6).
compra(maria, p4).
compra(maria, p2).
compra(andres, p9).
compra(andres, p3).
compra(camilo, p7).
compra(camilo, p8).
compra(jacobo, p13).
compra(mariana, p14).
compra(mariana, p15).

calificacion(juan,   p1, 5).
calificacion(juan,   p6, 4).
calificacion(maria,  p4, 5).
calificacion(maria,  p2, 3).
calificacion(andres, p9, 4).
calificacion(andres, p3, 5).
calificacion(camilo, p7, 4).
calificacion(camilo, p8, 5).
calificacion(jacobo, p13, 4).
calificacion(mariana,p14, 5).
calificacion(mariana,p15, 3).
