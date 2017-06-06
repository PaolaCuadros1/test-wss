# README

Proyecto realizado como test para ingresar a la empresa Worldwide Systems Services SAS. Este proyecto fue realizado en el lenguaje ruby vesión 2.4.1 con el framework rails versión 5.1.1 y RMV versión 1.29.1

Para su correcto uso debe realizar las siguientes especificaciones:

* Clonar el proyecto: git clone https://github.com/PaolaCuadros1/test-wss.git

* Se debe instalar RVM el cual permite manejar varias versiones de ruby, para realizar la instalación correcta -> https://rvm.io/

* Versión de ruby usada: 2.4.1, sino tiene la versión instalada debe ejecutar en la consola: rvm install ruby-2.4.1

* Versión de rails 5.1.1

* Para instalar todas gemas necesarias ejecutar: bundle install

* Base de datos: MongoDB, versión: 2.6.12

* Para importar los datos necesarios debe ejecutar en la consola: bundle exec rake db:seed

* Manejo de avatar con paperclip -> para su correcta instalación seguir los siguientes pasos: https://github.com/thoughtbot/paperclip#requirements

* PAGINACIÓN REALIZADA CON: 
* Kaminari -> Para el módulo de ciudades. http://railscasts.com/episodes/254-pagination-with-kaminari, https://github.com/kaminari/kaminari
* jquery-datatables-rails -> Para los módulos de clientes y departamentos. => https://github.com/rweng/jquery-datatables-rails
   con la instalación de Twitter Bootstrap 2
