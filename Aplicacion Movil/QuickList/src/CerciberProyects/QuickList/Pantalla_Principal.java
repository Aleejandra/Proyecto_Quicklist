/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CerciberProyects.QuickList;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.widget.TextView;

/**
 *
 * @author pabloycesar
 */
public class Pantalla_Principal extends Activity {
    
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pantalla_principal);
        
        TextView titulo = (TextView)findViewById(R.id.Titulo);
        new PropiedadesTexto(titulo,Color.rgb(0,204,204),20,80,200);
    }
    
}
