#!/bin/bash 

# Hacer un script que tenga una lista de 5 mascotas: perro, gato, tortuga:  
# Cuando la variable tenga un valor de perro, deberá imprimir:  ¡GUAU!
# Cuando tenga valor de gato: ¡MUAU!
# Cuando tenga valor de tortuga: "..." (sin comillas)
# Cuando tenga valor de cobra: No es mascota

metodo_1(){

# Este metodo es sin intervención del usuario, se declara la lista en un for dentro del código

        for i in perro gato tortuga cobra 
        do
                echo "El animal es: $i" 
                echo "" 
                sleep 1
                if [ "$i" = "perro" ]; then 
                        echo "guau"
                elif [ "$i" = "gato" ]; then 
                        echo "miau" 
                elif [ "$i" = "tortuga" ]; then 
                        echo "..." 
                else 
                        echo "No es mascota"
                fi 
        done 

}


metodo_2(){

# En este método se le indica al usuario las opciones disponibles y el usuario debe escribir la opción deseada.
# Cuando el usuario debe seleccionar una opción, la mejor opción es usar CASE en vez de IF

        echo "Ingresa la mascota deseada" 
        echo ""
        echo "1. perro"
        echo "2. Gato"
        echo "3. Tortuga"
        echo "4. Cobra"
        echo ""

        read -p "> " MASCOTA
        MASC_MIN=$(echo "$MASCOTA" | tr '[:upper:]' '[:lower:]')

        case $MASC_MIN in 
                "perro") echo "guau"
                        ;;
                "gato") echo "miau"
                        ;;
                "tortuga") echo "..." 
                        ;;
                "cobra") echo "zzz"
                        ;;
                *) echo "No es mascota"
        esac 


}

#metodo_1
#metodo_2
