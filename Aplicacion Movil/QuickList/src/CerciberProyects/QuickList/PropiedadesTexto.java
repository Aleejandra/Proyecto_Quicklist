/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CerciberProyects.QuickList;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

/**
 *
 * @author pabloycesar
 */
public class PropiedadesTexto {
    
    public PropiedadesTexto(TextView texto, int color, int Size, int Height, int width){
    
        texto.setTextColor(color);
        texto.setTextSize(Size);
        texto.setHeight(Height);
        texto.setWidth(width);
    
    }
    
    public PropiedadesTexto(EditText texto,int color, int Size, int Height, int width){
    
        texto.setTextColor(color);
        texto.setTextSize(Size);
        texto.setHeight(Height);
        texto.setWidth(width);
        texto.setBackgroundColor(Color.rgb(0,0,0));
    
    }
    
    public PropiedadesTexto(final Button texto,final String src, final Activity actividad){
    
        texto.setTextColor(Color.rgb(0,204,204));
        texto.setTextSize(20);
        texto.setHeight(50);
        texto.setWidth(140);
        texto.setBackgroundColor(Color.rgb(0,0,0));
        
        
        texto.setOnTouchListener(new View.OnTouchListener(){

            public boolean onTouch(View arg0, MotionEvent arg1) {
                
                if(arg1.getAction()==MotionEvent.ACTION_DOWN){
                    
                    texto.setBackgroundColor(Color.rgb(0,204,204));
                    
                }
                
                if(arg1.getAction()==MotionEvent.ACTION_UP){
                    
                    actividad.startActivity(new Intent(src));
                    
                }
                
                return true;  
            }
             
            
        });
        
    
    }
    
    
}
