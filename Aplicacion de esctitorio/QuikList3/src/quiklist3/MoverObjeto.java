/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiklist3;

import java.awt.Component;

/**
 *
 * @author pabloycesar
 */
public class MoverObjeto {
    
    
    public boolean corrimiento(Component objeto,String eje, int ubicacionEje,int ubicacionFinal, int velocidad){
    
        boolean terminado=false;
        
           if("x".equals(eje)){
           
               if(objeto.getLocation().x>ubicacionFinal-velocidad&&objeto.getLocation().x<ubicacionFinal+velocidad){
                   
                   objeto.setLocation(ubicacionFinal, ubicacionEje);
                   terminado= true;
               
               }else
                   
               if(objeto.getLocation().x>ubicacionFinal){
                   
                   objeto.setLocation(objeto.getLocation().x-velocidad, ubicacionEje);
               
               }else
               
               if(objeto.getLocation().x<ubicacionFinal){
                   
                   objeto.setLocation(objeto.getLocation().x+velocidad, ubicacionEje);
               
               }
               
           }
           
           if("y".equals(eje)){
           
               if(objeto.getLocation().y>ubicacionFinal-velocidad&&objeto.getLocation().y<ubicacionFinal+velocidad){
                   
                   objeto.setLocation(ubicacionEje, ubicacionFinal);
                    terminado= true;
                    
                    
               }else
                   
               if(objeto.getLocation().y>ubicacionFinal){
                   
                   objeto.setLocation(ubicacionEje, objeto.getLocation().y-velocidad);
               
               }else
               
               if(objeto.getLocation().y<ubicacionFinal){
                   
                   objeto.setLocation(ubicacionEje, objeto.getLocation().y+velocidad);
               
               }
               
           }
           
        return terminado;
    
    }
    
    
}
