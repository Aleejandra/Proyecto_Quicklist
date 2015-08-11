/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package prueba.movimiento;

import java.awt.Component;

/**
 *
 * @author Administrador
 */
public class MoverObjeto {
    
    Thread moverObjeto;
    
    int posicionInicial[];
    int posicionFinal[];
    
    public MoverObjeto(Component[] objeto, int[] velocidad){
    
            informacionObjetos(objeto);
            InicializarObjetos(objeto);
            MoverObjetos(objeto,velocidad);
        
    }
    
    public void informacionObjetos(Component[] objeto){
        
        posicionInicial = new int[objeto.length];
        posicionFinal = new int[objeto.length];
        
        for(int i=0;i<=objeto.length-1;i++){
         
             posicionInicial[i]=-objeto[i].getWidth();
             posicionFinal[i] = objeto[i].getLocation().x;
             
         }
        
    }
    
    public void MoverObjetos(final Component[] objeto,final int[] velocidad){
        
        moverObjeto = new Thread("Mover panel"){ 
            
                @Override
                public void run() {
                    
                    for(int i=0;i<=objeto.length-1;i++){

                        for(int j=posicionInicial[i];j<=posicionFinal[i];j+=velocidad[i]){
                    
                            if(i==0){InicializarObjetos(objeto);}
                            
                            objeto[i].setLocation(j, objeto[i].getLocation().y);
                            
                            new Esperar(moverObjeto,5); 

                        }
                    }
                }
        };
        moverObjeto.start();
    }
    
    public void InicializarObjetos(Component[] objeto){
    
        for(int i=1;i<=objeto.length-1;i++){
         
             objeto[i].setLocation(-objeto[i].getWidth(),objeto[i].getLocation().y);
             
         }
        
    }
    
    public void removerObjetos(final Component[] objeto,final int[] velocidad){

        moverObjeto.stop();
        moverObjeto = new Thread("Mover panel"){ 
            
                @Override
                public void run() {
                    
                    for(int i=objeto.length-1;i>=0;i--){

                        for(int j=objeto[i].getLocation().x;j>=posicionInicial[i];j-=velocidad[i]){
                            
                            objeto[i].setLocation(j, objeto[i].getLocation().y);
                            
                            new Esperar(moverObjeto,5); 

                        }
                    }
                }
        };
        moverObjeto.start();
    }
    
    
}
