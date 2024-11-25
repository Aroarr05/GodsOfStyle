<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos.css">
    <link rel="icon" href="imagenes/logo/Logo.ico">
    <title>GodsOfStyle</title>
</head>

<body>

    <!--HEADER-->

    <header>
        <div class="cabecera">
            <img class="logo" src="imagenes/logo/Logo.avif" alt="">
            <div class="buscador-diseño">
                <form class="navegador" action="buscar" method="post">
                    <input type="text" name="buscador_footer" id="buscador_footer" placeholder="BUSCAR..." required>
                    <button class="boton-navegador"><img class="busqueda-icono" src="imagenes/icono/icono/busqueda.png"
                            alt=""></button>
                </form>
            </div>
            <div>
                <a href="registro.html"><img class="icono" src="imagenes/icono/icono/usuario.png"></a>
                <a href="borrar_producto.html"><img class="icono" src="imagenes/icono/icono/bolsa-de-la-compra.png"></a>
            </div>
        </div>
        <div class="lower-navigation">
            <div class="dropdown">
                <img class="icono boton_menu" onclick="anadir()" src="imagenes/icono/icono/alinear-justificar.png">
                <div class="menu">
                    <a href="inicio.html">Inicio</a>
                    <a href="camisetas.php">Camisetas</a>
                    <a href="prints.php">Prints</a>
                </div>
            </div>
        </div>
    </header>
    <script src="JS/animaciones.js"></script>


    <!--FILTRAR-->
    <div class="filtrar">

        <h2>FILTRAR</h2>

        <div class="buscador">
            <form action="camisetas.php" method="get">
                <div class="container_buscador">

                    <label for="nombre">Nombre:</label>
                    <input type="text" name="nombre" id="nombre">

                    <label for="precio">Precio:</label>
                    <input type="text" name="precio" id="precio">

                    <label for="stock">Stock:</label>
                    <input type="text" name="stock" id="stock">

                    <label for="talla">Talla:</label>
                    <select id="talla" name="talla" required>
                    <option value="-1" disabled selected hidden></option>
                        <option value="S">S</option>
                        <option value="M">M</option>
                        <option value="L">L</option>
                        <option value="XL">XL</option>
                    </select>

                    <label for="color">Color:</label>
                    <select id="color" name="color" required>
                        <option value="-1" disabled selected hidden></option>
                        <option value="Verde">Verde</option>
                        <option value="Amarillo">Amarillo</option>
                        <option value="Rosa">Rosa</option>
                        <option value="Beige">Beige</option>
                        <option value="Azul">Azul</option>
                        <option value="Violeta">Violeta</option>
                        <option value="Gris">Gris</option>
                        <option value="Blanco">Blanco</option>
                        <option value="Negro">Negro</option>
                    </select>
                </div>
                <button type="submit">Buscar</button>
            </form>
        </div>

    </div>

    <!--PRODUCTOS-->

    <u>
        <h1 class="h1productos">CAMISETAS</h1>
    </u>

    <!--PHP-->

    <div class="container-items">
        <?php

        try {
            $pdo = new PDO("mysql:host=localhost;port=3309;dbname=web", "root", "");
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            // Definir las variables a partir de $_GET
            $nombre = isset($_GET['nombre']) ? $_GET['nombre'] : '';
            $precio = isset($_GET['precio']) ? $_GET['precio'] : 0;
            $stock = isset($_GET['stock']) ? $_GET['stock'] : 0;
            $talla = isset($_GET['talla']) ? $_GET['talla'] : '';
            $color = isset($_GET['color']) ? $_GET['color'] : '';

            // Preparar la consulta SQL
            $sql = "CALL mostrar_camisetas(:nombre, :precio, :stock, :talla, :color)";

            // Preparar la sentencia
            $stmt = $pdo->prepare($sql);

            // Asignar parámetros
            $stmt->bindValue(':nombre', '%' . htmlspecialchars($nombre) . '%');
            $stmt->bindValue(':precio', htmlspecialchars($precio));
            $stmt->bindValue(':stock', htmlspecialchars($stock));
            $stmt->bindValue(':talla', htmlspecialchars($talla));
            $stmt->bindValue(':color', htmlspecialchars($color));


            // Ejecutar la consulta
            $stmt->execute();

            // Mostrar resultados
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo '<div class="item">';
                echo '<figure><img src="' . htmlspecialchars($row['imagen_url']) . '" alt="producto"></figure>'; //FIGURE: permite almacenar una imagen en su interior
                echo '<div class="info-product">';
                echo '<h2 class="productos">' . htmlspecialchars($row['nombre']) . '</h2>';
                echo '<p class="price">' . htmlspecialchars($row['precio']) . '€/EUR</p>';
                echo '<button>Añadir al carrito</button>';
                echo '</div>';
                echo '</div>';
            }
        } catch (PDOException $e) {
            die("Error: " . $e->getMessage());
        }
        ?>


    </div>

    <!--FIN DE LA PAGINA-->

    <footer class="footer">
        <div class="container">
            <div class="footer-row">
                <div class="footer-links">
                    <h4>Politicas</h4>
                    <ul>
                        <li><a href="#">Nuestras Politicas</a></li>
                        <li><a href="#">Términos De Servicio</a></li>
                    </ul>
                </div>
                <div class="footer-links">
                    <h4>Ayuda</h4>
                    <ul>
                        <li><a href="#">Preguntas Frecuentes</a></li>
                        <li><a href="#">Atención Al cliente</a></li>
                        <li><a href="#">Politica De Privicidad</a></li>
                        <li><a href="#">Condiciones De La Web</a></li>
                        <li><a href="#">Politica De Cookies</a></li>
                    </ul>
                </div>
                <div class="social-links">
                    <h4>Redes Sociales</h4>
                    <div>
                        <a href="https://www.facebook.com"><img src="imagenes/icono/redes-sociales/facebook.png"></a>
                        <a href="https://twitter.com"><img src="imagenes/icono/redes-sociales/gorjeo.png"></a>
                        <a href="https://www.tiktok.com"><img src="imagenes/icono/redes-sociales/tik-tok.png"></a>
                    </div>
                </div>
                <div class="footer-links">
                    <h4>Metodo de pago</h4>
                    <div>
                        <img class="pago" src="imagenes/fotos/metodo-de-pago/metodo-de-pago.webp">
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <div class="grupo-1">
        <samp class="copyright">&copy; 2024 ItemPocket España</samp>
    </div>
</body>

</html>