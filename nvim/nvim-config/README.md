# nvim-config
My configuracion de nvim
añadir la direccion de la carpeta de configuracion para evitar problemas con alpha, de la siguiente manera 

-- Agrega la ruta de la carpeta de configuración a package.path y package.cpath

    package.path = package.path .. ";C:\\Users\\Renato\\AppData\\Local\\nvim\\?.lua"
    package.cpath = package.cpath .. ";C:\\Users\\Renato\\AppData\\Local\\nvim\\?.dll"

