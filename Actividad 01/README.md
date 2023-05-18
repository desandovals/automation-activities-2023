# Actividad # 1

## Instrucciones

Para la primer actividad, deberán cumplir lo siguiente: 

1. Instalar [Visual Studio Code](https://code.visualstudio.com/)

2. Instalar [Google Cloud SDK](https://code.visualstudio.com/)

3. Instalar [Cliente GIT](https://github.com/git-for-windows/git/releases/download/v2.40.1.windows.1/Git-2.40.1-64-bit.exe)

4. Obtener usuario en [GitHub](https://github.com)

5. Generar llave SSH en GitHub. 

Desde la terminal dentro de Visual Studio Code ejecutar: 

```
ssh-keygen -t rsa
```

6. Añadir llave SSH en usuario de GitHub

<p align="center">
<img src="images/image-01.png" width="500">
</p>


7. Pasar la prueba de validación. 

```
ssh -T git@github.com
```



