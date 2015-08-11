/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiklist3;

import java.awt.Container;
import javax.swing.JButton;

/**
 *
 * @author pabloycesar
 */
public class CambiarTexto {
    
    CambiarTexto(JButton objeto,String texto){
    
        int x=objeto.getLocation().x;
        int y=objeto.getLocation().y;
        int ancho=objeto.getWidth();
        int alto=objeto.getHeight();
        Container ObjetoContenedor=objeto.getParent();
        
        ObjetoContenedor.remove(objeto);
        objeto.setText(texto);
        ObjetoContenedor.add(objeto,new org.netbeans.lib.awtextra.AbsoluteConstraints(x, y, ancho, alto));
    
    
    }
    
}
