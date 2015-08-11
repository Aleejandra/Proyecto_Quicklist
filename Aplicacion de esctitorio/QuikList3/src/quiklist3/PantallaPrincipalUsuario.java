/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiklist3;

import javax.swing.JPanel;

/**
 *
 * @author pabloycesar
 */
public class PantallaPrincipalUsuario extends javax.swing.JPanel {

    Thread moverComponentes;
    
    boolean cerrarPanel=false,panelCerrado=false,cerrarMenu=false,menuCerrado=false,botonVolver=false,propiedadesCambiadas=false;
    String cambiarAPanel="",botonSeleccionado;
    int NumeroFilas;
    
    int velocidad=40,esperaDelHilo=5;
    
    int posicionTitulo=20;
    int posicionFilaSuperior=40;
    int posicionCuadroFoto=20;
    int posicionFilasMenu=20;
    int posicionBotones=540;
    
    public PantallaPrincipalUsuario(String usuario,JPanel panel) {
        
        initComponents();
        definirUsuario(usuario);
        hilo(panel);
        
    }
    
    public void hilo(final JPanel panel){
    
        moverComponentes = new Thread("Mover panel"){

                @Override
                public void run() {
                    
                    while(true){

                        if(cerrarPanel){

                            removerBotones();

                        }else{

                            if (!cerrarMenu){ubicarPanelSuperior();}
                            cambiarMenu();
                            
                        }

                        cambiarPanel(panel);
                        
                        new Esperar(moverComponentes,esperaDelHilo);
                        
                    }

                }
        };
        
        moverComponentes.start();
    
    }
    
    public void cambiarPanel(JPanel panel){
        
        if("EditarDatos".equals(cambiarAPanel)&&panelCerrado){
           
                panel.removeAll();
                panel.add(new EditarDatos(), new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 910, 570));
                panel.revalidate();
                cambiarAPanel="";
        }
        
        if("PantallaDeInicio".equals(cambiarAPanel)&&panelCerrado){
           
                panel.removeAll();
                panel.add(new PantallaDeInicio(panel), new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 910, 570));
                panel.revalidate();
                cambiarAPanel="";
        }
        
    }
    
    public void definirUsuario(String usuario){
    
        if("Aprendiz".equals(usuario)){

            jLabel4.setText("Aprendiz");
            jButton13.setText("Editar Mis Datos");
            jButton12.setText("Actividades Y Calificaciones");
            jButton10.setText("Asistencia");
            jButton14.setText("Ver Plan De Estudios");
            jButton15.setText("Formato De Etapa Lectiva");
            NumeroFilas=5;
            botonVolver=false;

        }
        if("Instructor".equals(usuario)){

            jLabel4.setText("Instructor");
            jButton13.setText("Editar Mis Datos");
            jButton12.setText("Gestionar Actividades");
            jButton10.setText("Dar Asistencia");
            jButton14.setText("Ver Plan De Estudios");
            NumeroFilas=4;
            botonVolver=false;
        }
        if("Administrador".equals(usuario)){

            jLabel4.setText("Administrador");
            jButton13.setText("Gestionar Aprendices");
            jButton12.setText("Gestionar Instructores");
            jButton10.setText("Gestionar Administradores");
            NumeroFilas=3;
            botonVolver=false;

        }

    }
    
    public void cambiarMenu(){
    
        if(cerrarMenu){
                        
            removerBotones();
                        
        }
        if(menuCerrado){
            
            if(!propiedadesCambiadas){
            
                cambiarPropiedadesMenu();
                
            } 
            
            ubicarFilas();
            
        }
    }
    
    public void cambiarPropiedadesMenu(){
        
        if("Gestionar Aprendices".equals(botonSeleccionado)){
        
            NumeroFilas=3;
            botonVolver=true;
            new CambiarTexto(jButton13,"Informacion Aprendices");
            new CambiarTexto(jButton12,"Editar Aprendiz");
            new CambiarTexto(jButton10,"Agregar Aprendiz");
            new CambiarTexto(jButton14,"");
            new CambiarTexto(jButton15,"");

        }
        
        if("Gestionar Instructores".equals(botonSeleccionado)){
        
            NumeroFilas=3;
            botonVolver=true;
            new CambiarTexto(jButton13,"Informacion Instructores");
            new CambiarTexto(jButton12,"Editar Instructores");
            new CambiarTexto(jButton10,"Agregar Instructores");
            new CambiarTexto(jButton14,"");
            new CambiarTexto(jButton15,"");
        }
        
        if("Gestionar Administradores".equals(botonSeleccionado)){
        
            NumeroFilas=3;
            botonVolver=true;
            new CambiarTexto(jButton13,"Informacion Administradores");
            new CambiarTexto(jButton12,"Editar Administradores");
            new CambiarTexto(jButton10,"Agregar Administradores");
            new CambiarTexto(jButton14,"");
            new CambiarTexto(jButton15,"");
            
            
        }
        
        if("Informacion Aprendices".equals(botonSeleccionado)){
        
            NumeroFilas=3;
            botonVolver=true;
            new CambiarTexto(jButton13,"Información ficha 750566");
            new CambiarTexto(jButton12,"Información ficha 554524");
            new CambiarTexto(jButton10,"Información ficha 685689");
            new CambiarTexto(jButton14,"");
            new CambiarTexto(jButton15,"");
        
        }
        
        if("Editar Mis Datos".equals(botonSeleccionado)){
            
            cerrarPanel=true;
            cambiarAPanel="EditarDatos";
            
        }
        
        propiedadesCambiadas=true;
        
    }
    
    public void ubicarPanelSuperior(){

        if(new MoverObjeto().corrimiento(jPanel1, "x", posicionTitulo,-10, velocidad))
        if(new MoverObjeto().corrimiento(jPanel6, "x", posicionFilaSuperior,(jPanel1.getLocation().x)+(jPanel1.getWidth())-20, velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel7, "x", posicionFilaSuperior+45,(jPanel1.getLocation().x)+(jPanel1.getWidth())-20, velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel8, "x", posicionFilaSuperior+80,(jPanel1.getLocation().x)+(jPanel1.getWidth())-20, velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel9, "x", posicionFilaSuperior+115,(jPanel1.getLocation().x)+(jPanel1.getWidth())-20, velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel10, "x", posicionCuadroFoto,(jPanel6.getLocation().x)+(jPanel6.getWidth())-10, velocidad))
        {ubicarFilas();ubicarBotones();}  
         
    }
    
    public void removerPanelSuperior(){

        if(new MoverObjeto().corrimiento(jPanel10, "x", posicionCuadroFoto,-jPanel10.getWidth(), velocidad))
        if(new MoverObjeto().corrimiento(jPanel9, "x", posicionFilaSuperior+115,-jPanel9.getWidth(), velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel8, "x", posicionFilaSuperior+80,-jPanel8.getWidth(), velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel7, "x", posicionFilaSuperior+45,-jPanel7.getWidth(), velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel6, "x", posicionFilaSuperior,-jPanel6.getWidth(), velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel1, "x", posicionTitulo,-jPanel1.getWidth(), velocidad))
           panelCerrado=true;
        
    }
    
    public void ubicarFilas(){
        
        int proporcionPosicionFilas=0;
        
            if(NumeroFilas==1){proporcionPosicionFilas=posicionFilasMenu+((35/2)*4);}
            if(NumeroFilas==2){proporcionPosicionFilas=posicionFilasMenu+((35/2)*3);}
            if(NumeroFilas==3){proporcionPosicionFilas=posicionFilasMenu+((35/2)*2);}
            if(NumeroFilas==4){proporcionPosicionFilas=posicionFilasMenu+((35/2)*1);}
            if(NumeroFilas==5){proporcionPosicionFilas=posicionFilasMenu+((35/2)*0);}

            if(NumeroFilas>=1)
            if(new MoverObjeto().corrimiento(jPanel11, "x", proporcionPosicionFilas,(this.getWidth()/2)-(jButton13.getLocation().x)-(jButton13.getWidth()/2), velocidad*4))
            if(NumeroFilas>=2)
            if(new MoverObjeto().corrimiento(jPanel12, "x", proporcionPosicionFilas+35,(this.getWidth()/2)-(jButton13.getLocation().x)-(jButton13.getWidth()/2), velocidad*4))
            if(NumeroFilas>=3)
            if(new MoverObjeto().corrimiento(jPanel13, "x", proporcionPosicionFilas+(35*2),(this.getWidth()/2)-(jButton13.getLocation().x)-(jButton13.getWidth()/2), velocidad*4))
            if(NumeroFilas>=4)
            if(new MoverObjeto().corrimiento(jPanel14, "x", proporcionPosicionFilas+(35*3),(this.getWidth()/2)-(jButton13.getLocation().x)-(jButton13.getWidth()/2), velocidad*4)) 
            if(NumeroFilas>=5)
            new MoverObjeto().corrimiento(jPanel15, "x", proporcionPosicionFilas+(35*4),(this.getWidth()/2)-(jButton13.getLocation().x)-(jButton13.getWidth()/2), velocidad*4);
            
    }
    
    public void removerFilas(){

        if(new MoverObjeto().corrimiento(jPanel15, "x", jPanel15.getLocation().y,-jPanel15.getWidth(), velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel14, "x", jPanel14.getLocation().y,-jPanel14.getWidth(), velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel13, "x", jPanel13.getLocation().y,-jPanel13.getWidth(), velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel12, "x", jPanel12.getLocation().y,-jPanel12.getWidth(), velocidad*4))
        if(new MoverObjeto().corrimiento(jPanel11, "x", jPanel11.getLocation().y,-jPanel11.getWidth(), velocidad*4))
        
        if(cerrarPanel){
        
            removerPanelSuperior();
        
        }else{
        
            cerrarMenu=false;
            menuCerrado=true;
        
        }
    }
    
    public void ubicarBotones(){
  
        if(botonVolver){
            
            if(new MoverObjeto().corrimiento(jPanel3, "x", posicionBotones,(jPanel3.getWidth()), velocidad)){
            
                menuCerrado=false;
                propiedadesCambiadas=false;
            
            }
            
        }else{
            
            new MoverObjeto().corrimiento(jPanel3, "x", posicionBotones,-(jPanel3.getWidth()/2), velocidad);
            
            menuCerrado=false;
            propiedadesCambiadas=false;
        }
        
    
    }
    
    public void removerBotones(){

        if(new MoverObjeto().corrimiento(jPanel3, "x", posicionBotones,-jPanel3.getWidth(), velocidad))
            removerFilas();
    
    }
    
    
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel8 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jPanel10 = new javax.swing.JPanel();
        jPanel6 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jPanel7 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jPanel8 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        jPanel9 = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jPanel11 = new javax.swing.JPanel();
        jButton13 = new javax.swing.JButton();
        jPanel12 = new javax.swing.JPanel();
        jButton12 = new javax.swing.JButton();
        jPanel13 = new javax.swing.JPanel();
        jButton10 = new javax.swing.JButton();
        jPanel14 = new javax.swing.JPanel();
        jButton14 = new javax.swing.JButton();
        jPanel15 = new javax.swing.JPanel();
        jButton15 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jButton16 = new javax.swing.JButton();
        jButton11 = new javax.swing.JButton();

        setOpaque(false);
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setOpaque(false);
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel8.setFont(new java.awt.Font("Berlin Sans FB", 1, 70)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(0, 204, 204));
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("Quick");
        jLabel8.setDoubleBuffered(true);
        jPanel1.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 60, 200, 70));

        jLabel2.setFont(new java.awt.Font("Berlin Sans FB", 1, 70)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 204, 204));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("List");
        jLabel2.setDoubleBuffered(true);
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 110, 130, 70));

        jLabel3.setFont(new java.awt.Font("Berlin Sans FB", 1, 80)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 204, 204));
        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoPrincipal.gif"))); // NOI18N
        jLabel3.setBorder(javax.swing.BorderFactory.createMatteBorder(10, 10, 10, 10, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/borde.png")))); // NOI18N
        jLabel3.setDoubleBuffered(true);
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 260, 230));

        add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(-270, 20, 270, -1));

        jPanel10.setBackground(new java.awt.Color(0, 0, 0));
        jPanel10.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/borde.png")))); // NOI18N
        jPanel10.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        add(jPanel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(-160, 20, 160, 190));

        jPanel6.setBackground(new java.awt.Color(0, 0, 0));
        jPanel6.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel6.setOpaque(false);
        jPanel6.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel4.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 36)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(0, 204, 204));
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("Administrador");
        jPanel6.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 0, 380, 50));

        add(jPanel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(-500, 30, 500, 50));

        jPanel7.setBackground(new java.awt.Color(0, 0, 0));
        jPanel7.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel7.setOpaque(false);
        jPanel7.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel5.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(0, 204, 204));
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel5.setText("Alfredo Enrrique");
        jLabel5.setToolTipText("");
        jPanel7.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 0, 380, 40));

        add(jPanel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(-500, 75, 500, 40));

        jPanel8.setBackground(new java.awt.Color(0, 0, 0));
        jPanel8.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel8.setOpaque(false);
        jPanel8.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel6.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(0, 204, 204));
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel6.setText("Contreras Manrrique");
        jLabel6.setToolTipText("");
        jPanel8.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 0, 380, 40));

        add(jPanel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(-500, 110, 500, 40));

        jPanel9.setBackground(new java.awt.Color(0, 0, 0));
        jPanel9.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel9.setOpaque(false);
        jPanel9.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel7.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(0, 204, 204));
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel7.setText("CC. 48573473");
        jPanel9.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 0, 380, 40));

        add(jPanel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(-500, 145, 500, 40));

        jPanel2.setOpaque(false);
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel11.setBackground(new java.awt.Color(0, 0, 0));
        jPanel11.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel11.setOpaque(false);
        jPanel11.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton13.setBackground(new java.awt.Color(255, 255, 255));
        jButton13.setFont(new java.awt.Font("Berlin Sans FB Demi", 1, 24)); // NOI18N
        jButton13.setForeground(new java.awt.Color(0, 204, 204));
        jButton13.setBorder(null);
        jButton13.setContentAreaFilled(false);
        jButton13.setDoubleBuffered(true);
        jButton13.setFocusPainted(false);
        jButton13.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton13.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton13.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton13ActionPerformed(evt);
            }
        });
        jPanel11.add(jButton13, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 0, 600, 40));

        jPanel2.add(jPanel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(-900, 20, 900, 40));

        jPanel12.setBackground(new java.awt.Color(0, 0, 0));
        jPanel12.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel12.setOpaque(false);
        jPanel12.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton12.setBackground(new java.awt.Color(255, 255, 255));
        jButton12.setFont(new java.awt.Font("Berlin Sans FB Demi", 1, 24)); // NOI18N
        jButton12.setForeground(new java.awt.Color(0, 204, 204));
        jButton12.setBorder(null);
        jButton12.setContentAreaFilled(false);
        jButton12.setDoubleBuffered(true);
        jButton12.setFocusPainted(false);
        jButton12.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton12.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton12.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton12ActionPerformed(evt);
            }
        });
        jPanel12.add(jButton12, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 0, 600, 40));

        jPanel2.add(jPanel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(-900, 55, 900, 40));

        jPanel13.setBackground(new java.awt.Color(0, 0, 0));
        jPanel13.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel13.setOpaque(false);
        jPanel13.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton10.setBackground(new java.awt.Color(255, 255, 255));
        jButton10.setFont(new java.awt.Font("Berlin Sans FB Demi", 1, 24)); // NOI18N
        jButton10.setForeground(new java.awt.Color(0, 204, 204));
        jButton10.setBorder(null);
        jButton10.setContentAreaFilled(false);
        jButton10.setDoubleBuffered(true);
        jButton10.setFocusPainted(false);
        jButton10.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton10.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton10ActionPerformed(evt);
            }
        });
        jPanel13.add(jButton10, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 0, 600, 40));

        jPanel2.add(jPanel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(-900, 90, 900, 40));

        jPanel14.setBackground(new java.awt.Color(0, 0, 0));
        jPanel14.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel14.setOpaque(false);
        jPanel14.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton14.setBackground(new java.awt.Color(255, 255, 255));
        jButton14.setFont(new java.awt.Font("Berlin Sans FB Demi", 1, 24)); // NOI18N
        jButton14.setForeground(new java.awt.Color(0, 204, 204));
        jButton14.setBorder(null);
        jButton14.setContentAreaFilled(false);
        jButton14.setDoubleBuffered(true);
        jButton14.setFocusPainted(false);
        jButton14.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton14.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton14ActionPerformed(evt);
            }
        });
        jPanel14.add(jButton14, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 0, 600, 40));

        jPanel2.add(jPanel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(-900, 125, 900, 40));

        jPanel15.setBackground(new java.awt.Color(0, 0, 0));
        jPanel15.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel15.setOpaque(false);
        jPanel15.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton15.setBackground(new java.awt.Color(255, 255, 255));
        jButton15.setFont(new java.awt.Font("Berlin Sans FB Demi", 1, 24)); // NOI18N
        jButton15.setForeground(new java.awt.Color(0, 204, 204));
        jButton15.setBorder(null);
        jButton15.setContentAreaFilled(false);
        jButton15.setDoubleBuffered(true);
        jButton15.setFocusPainted(false);
        jButton15.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton15.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton15ActionPerformed(evt);
            }
        });
        jPanel15.add(jButton15, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 0, 600, 40));

        jPanel2.add(jPanel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(-900, 160, 900, 40));

        add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 270, 910, 230));

        jPanel3.setLayout(new java.awt.GridLayout());

        jButton16.setBackground(new java.awt.Color(255, 255, 255));
        jButton16.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton16.setForeground(new java.awt.Color(0, 153, 153));
        jButton16.setText("Volver");
        jButton16.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton16.setDoubleBuffered(true);
        jButton16.setFocusPainted(false);
        jButton16.setOpaque(false);
        jButton16.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton16.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton16.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton16ActionPerformed(evt);
            }
        });
        jPanel3.add(jButton16);

        jButton11.setBackground(new java.awt.Color(255, 255, 255));
        jButton11.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton11.setForeground(new java.awt.Color(0, 153, 153));
        jButton11.setText("Cerrar sesión");
        jButton11.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton11.setDoubleBuffered(true);
        jButton11.setFocusPainted(false);
        jButton11.setOpaque(false);
        jButton11.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton11.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton11ActionPerformed(evt);
            }
        });
        jPanel3.add(jButton11);

        add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(-240, 540, 240, 30));
    }// </editor-fold>//GEN-END:initComponents

    private void jButton10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton10ActionPerformed
        
            cerrarMenu=true;
            botonSeleccionado=jButton10.getText();
        
    }//GEN-LAST:event_jButton10ActionPerformed

    private void jButton12ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton12ActionPerformed
        
            cerrarMenu=true;
            botonSeleccionado=jButton12.getText();
        
    }//GEN-LAST:event_jButton12ActionPerformed

    private void jButton13ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton13ActionPerformed
       
            cerrarMenu=true;
            botonSeleccionado=jButton13.getText();
        
        
    }//GEN-LAST:event_jButton13ActionPerformed

    private void jButton11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton11ActionPerformed
       
        cerrarPanel=true;
        cambiarAPanel="PantallaDeInicio";
        
    }//GEN-LAST:event_jButton11ActionPerformed

    private void jButton14ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton14ActionPerformed
        
            cerrarMenu=true;
            botonSeleccionado=jButton14.getText();
        
    }//GEN-LAST:event_jButton14ActionPerformed

    private void jButton15ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton15ActionPerformed
        
            cerrarMenu=true;
            botonSeleccionado=jButton15.getText();
        
    }//GEN-LAST:event_jButton15ActionPerformed

    private void jButton16ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton16ActionPerformed
        
        cerrarMenu=true;
        if("Gestionar Aprendices".equals(botonSeleccionado)){botonSeleccionado="N";}
        if("Gestionar Instructores".equals(botonSeleccionado)){botonSeleccionado="N";}
        if("Gestionar Administradores".equals(botonSeleccionado)){botonSeleccionado="N";}
        
    }//GEN-LAST:event_jButton16ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton11;
    private javax.swing.JButton jButton12;
    private javax.swing.JButton jButton13;
    private javax.swing.JButton jButton14;
    private javax.swing.JButton jButton15;
    private javax.swing.JButton jButton16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    public javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel10;
    private javax.swing.JPanel jPanel11;
    private javax.swing.JPanel jPanel12;
    private javax.swing.JPanel jPanel13;
    private javax.swing.JPanel jPanel14;
    private javax.swing.JPanel jPanel15;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
    // End of variables declaration//GEN-END:variables
}
