# Creación de un Script en Bash!
## Gerhard Ardon    -202004796-
La actividad #2 se basó en escribir un Script que consumiera el siguiente url _**https://api.github.com/users/**_ concatenando nuestro username el cual estaria guardado en una variable GITHUB_USER.

Para la lectura del script se utilizó el comando jq para el manejo del jsno que retorna el url. (Puede ver los comentarios de script para una explicacion mas detallada)

![](https://github.com/gerhardardon/-so1_actividades_202004796/blob/main/actividad2/images/Captura%20de%20pantalla%20de%202024-02-04%2022-25-28.png)

Luego de crear el Script se debe configurar el crontab para la autoejecucion del script, e.sto se hace con el comando 

    crontab -e
El cual al ser ejecutado por primera vez preguntara con que editor se desea abrir, en mi caso escogí Nano.
Luego de esto se debe escribir el cronjob en el archivo usando el siguiente formato 
`m h dom mon dow command` 

-   `m`: Minuto (0 - 59)
-   `h`: Hora (0 - 23)
-   `dom`: Día del mes (1 - 31)
-   `mon`: Mes (1 - 12)
-   `dow`: Día de la semana (0 - 6, donde 0 es domingo)
-   `command`: Comando a ejecutar"

Para ejecutar cada 5 minutos el script llamado "script_github.sh" ubicado en el directorio "/home/gerhard/Escritorio", el cronjob se colocó de la sigiente forma:

`*/5 * * * * /home/gerhard/Escritorio/script_github.sh`

(los * significan cualquier valor)

![](https://github.com/gerhardardon/-so1_actividades_202004796/blob/main/actividad2/images/Captura%20de%20pantalla%20de%202024-02-04%2022-23-54.png)

La salida es la siguiente:

![](https://github.com/gerhardardon/-so1_actividades_202004796/blob/main/actividad2/images/Captura%20de%20pantalla%20de%202024-02-04%2022-23-19.png)
