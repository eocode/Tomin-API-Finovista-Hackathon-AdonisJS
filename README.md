# Tomin <!-- omit in toc -->

Aplicacion Neobanking de inclusión financiera.

## Tabla de Contenido<!-- omit in toc -->
- [Acceso a la api](#acceso-a-la-api)
- [Ambiente del proyecto](#ambiente-del-proyecto)
  - [Ejecución de la api](#ejecuci%c3%b3n-de-la-api)

# Acceso a la api
La api se encuentra publicada en la siguiente ruta:

[Api tomin](http://tomin-env-2.eba-dymffph5.us-west-2.elasticbeanstalk.com/)

# Ambiente del proyecto

* AWS
  * API (Node Js - Adonis)
  * PostgreSQL
  * App móvil (Dart - Flutter)

## Ejecución de la api

Descargar el repo, configurar acceso a la bd y ejecutar lo siguiente

Claves de configuración
```shell
HOST=127.0.0.1
PORT=3333
NODE_ENV=development
APP_NAME=AdonisJs
APP_URL=http://${HOST}:${PORT}
CACHE_VIEWS=false
APP_KEY=HowTVCMJ2cgYJmJEXq4QXxLxtalBZZwK
DB_CONNECTION=pg
DB_HOST=tomin.cd4ksl6mc9rh.us-west-2.rds.amazonaws.com
DB_PORT=5432
DB_USER=tomin
DB_PASSWORD=123456789
DB_DATABASE=tomin
HASH_DRIVER=bcrypt
```

Instalar el CLI de adonis para usar comandos de consola
```shell
cd api
npm i
npm i -g @adonisjs/cli
```

Preparar ambiente
```shell
adonis migration:run
adonis serve --dev
```

## API KEY HSBC
JYOfFaVnQH6poDGoaOp2mamgp9emrHOm2QVCfU19