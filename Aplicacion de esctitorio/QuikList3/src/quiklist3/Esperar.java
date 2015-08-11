/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiklist3;

/**
 *
 * @author pabloycesar
 */
public class Esperar {
    
    public Esperar(Thread hilo,int tiempo){
    
        boolean esperaInterrumpida;

        do{

            esperaInterrumpida=false;

            try {

                hilo.join(tiempo);
                
            } catch (InterruptedException ex) {

                esperaInterrumpida=true;

            }

        }while(esperaInterrumpida);
    
    }
    
}
