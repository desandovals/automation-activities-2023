#!/bin/bash 

INTRUSO=$(gsutil ls | grep qas)
INTRUSO_1=$(gsutil ls | grep -c qas)


condicion(){

        if [ -z $INTRUSO ]
        then
                echo "Todo en orden"
        else
                alerta
        fi


}

condicion_1(){

        if [ "$INTRUSO_1" -gt 1 ] 
        then 
                alerta
        else 
                        echo "Todo en orden" 
        fi

}

alerta(){

        for i in {1..10}
        do
                echo "¡Hay un intruso!"
        done 

}

equipo(){

echo "Equipo X"
date 

}

#condicion
#condicion_1
#equipo
