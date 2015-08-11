package CerciberProyects.QuickList;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

public class MainActivity extends Activity
{
    
    TextView titulo;
    EditText cuadroTexto1;
    EditText cuadroTexto2;
    Spinner spinner1;
    Button boton1;
    Button boton2;
    String[] opciones = new String[]{"Aprendiz","Instructor","Administrador"};
    
    
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        titulo = (TextView)findViewById(R.id.Titulo);
        new PropiedadesTexto(titulo,Color.rgb(0,204,204),40,80,200);
        
        cuadroTexto1 = (EditText)findViewById(R.id.EditText1);
        new PropiedadesTexto(cuadroTexto1,Color.rgb(0,204,204),20,40,200);
        
        cuadroTexto2 = (EditText)findViewById(R.id.EditText2);
        new PropiedadesTexto(cuadroTexto2,Color.rgb(0,204,204),20,40,200);
        
        spinner1 = (Spinner)findViewById(R.id.Spinner1);
        ArrayAdapter<String> adaptador = new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item,opciones);
        spinner1.setAdapter(adaptador);
        
        boton1 = (Button)findViewById(R.id.Boton1);
        new PropiedadesTexto(boton1,"CerciberProyects.QuickList.Pantalla_Principal",this);
        
        boton2 = (Button)findViewById(R.id.Boton2);
        new PropiedadesTexto(boton2,"CerciberProyects.QuickList.Pantalla_Principal",this);
 
    }
}
