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
public class PantallaDeInicio extends javax.swing.JPanel {

    Thread moverComponentes;
    
    boolean cerrarPanel=false,panelCerrado=false,desplegarBarra=false;
    String cambiarAPanel="",datoBarraDesplegable="Aprendiz";
    
    int velocidad=40,esperaDelHilo=5;
    
    int posicionTitulo=35;
    int posicionFila1=350;
    int posicionFila2=385;
    int posicionFila3=420;
    int posicionBotones=540;
    
    
    public PantallaDeInicio(JPanel panel) {

        initComponents(); // Añadir y ubicar elementos iniciales
        hilo(panel); // Hilo con los procedimientos
        
    }
    
    public void hilo(final JPanel panel){ // Hilo con los procedimientos
    
        moverComponentes = new Thread("Mover panel"){

                @Override
                public void run() {
                    
                    while(true){

                        if(cerrarPanel){

                            removerElementos(); // Sacar elementos de la pantalla

                        }else{

                            ubicarElementos(); // Ingresar elementos a la pantalla
                            moverBarraDesplegable();

                        }

                        cambiarPanel(panel); //Cambiar pantalla actual
                        
                        new Esperar(moverComponentes,esperaDelHilo); //Pausar temporalmente el hilo

                    }

                }
        };

        moverComponentes.start(); // Iniciar hilo con los procedimientos
        
    }
    
    public void cambiarPanel(JPanel panel){
        
        if("PantallaPrincipalUsuario".equals(cambiarAPanel)&&panelCerrado){
           
                panel.removeAll();
                panel.add(new PantallaPrincipalUsuario(datoBarraDesplegable,panel), new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 910, 570));
                panel.revalidate();
                cambiarAPanel="";
        }
        
        if("PantallaDeRegistro".equals(cambiarAPanel)&&panelCerrado){
           
                panel.removeAll();
                panel.add(new PantallaDeRegistro(), new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 910, 570));
                panel.revalidate();
                cambiarAPanel="";
        }
        
        if("PantallaRecuperarContraseña".equals(cambiarAPanel)&&panelCerrado){
           
                panel.removeAll();
                panel.add(new PantallaRecuperarContraseña(), new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 910, 570));
                panel.revalidate();
                cambiarAPanel="";
        }
        
    }
    
    public void ubicarElementos(){
    
            if(new MoverObjeto().corrimiento(jPanel4, "x", posicionTitulo, (this.getWidth()/2)-(jPanel4.getSize().width)+(jLabel2.getWidth()/2), velocidad)) // Titulo
            if(new MoverObjeto().corrimiento(jPanel6, "x", posicionFila1,this.getWidth()/2-jPanel7.getSize().width+jTextField1.getWidth(), velocidad*4)) //Fila1
            if(new MoverObjeto().corrimiento(jPanel7, "x", posicionFila2,this.getWidth()/2-jPanel7.getSize().width+jTextField1.getWidth(), velocidad*4)) //Fila2
            if(new MoverObjeto().corrimiento(jPanel5, "x", posicionFila3,this.getWidth()/2-jPanel7.getSize().width+jTextField1.getWidth(), velocidad*4)) //Fila3
               new MoverObjeto().corrimiento(jPanel3, "x", posicionBotones,0, velocidad); //Botones

            
    }
    
    public void removerElementos(){
    
        if(new MoverObjeto().corrimiento(jPanel3, "x", posicionBotones,-jPanel3.getWidth(), velocidad)) //Botones
        if(new MoverObjeto().corrimiento(jPanel5, "x", posicionFila3,-jPanel5.getSize().width, velocidad*4)) //Fila3
        if(new MoverObjeto().corrimiento(jPanel7, "x", posicionFila2,-jPanel7.getSize().width, velocidad*4)) //Fila2
        if(new MoverObjeto().corrimiento(jPanel6, "x", posicionFila1,-jPanel6.getSize().width, velocidad*4)) //Fila1
        if(new MoverObjeto().corrimiento(jPanel4, "x", posicionTitulo,0-(jPanel4.getSize().width), velocidad)) //Titulo
           panelCerrado=true;
        
    }
    
    public void moverBarraDesplegable(){
            
        if(desplegarBarra){
            
            new MoverObjeto().corrimiento(jButton7, "y", jButton7.getLocation().x, 25, 5); //Boton instructor
            new MoverObjeto().corrimiento(jButton8, "y", jButton8.getLocation().x, 50, 5); //Boton administrador
            
        }else{
        
            new MoverObjeto().corrimiento(jButton7, "y", jButton7.getLocation().x, 0, 5); //Boton instructor
            new MoverObjeto().corrimiento(jButton8, "y", jButton8.getLocation().x, 0, 5); //Boton administrador
        
        }   
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel4 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jPanel6 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jPanel7 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        jPasswordField1 = new javax.swing.JPasswordField();
        jPanel5 = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        jButton9 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jButton6 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jButton10 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton11 = new javax.swing.JButton();

        setBackground(new java.awt.Color(0, 0, 0));
        setOpaque(false);
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel4.setBackground(new java.awt.Color(0, 0, 0));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel2.setFont(new java.awt.Font("Berlin Sans FB", 1, 150)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 204, 204));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("QuickList");
        jLabel2.setDoubleBuffered(true);
        jPanel4.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 10, 820, 230));

        jLabel3.setFont(new java.awt.Font("Berlin Sans FB", 1, 80)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 204, 204));
        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoPrincipal.gif"))); // NOI18N
        jLabel3.setBorder(javax.swing.BorderFactory.createMatteBorder(10, 10, 10, 10, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/borde.png")))); // NOI18N
        jLabel3.setDoubleBuffered(true);
        jPanel4.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1000, 250));

        add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(-1000, 35, 1000, 250));

        jPanel6.setBackground(new java.awt.Color(0, 0, 0));
        jPanel6.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel6.setOpaque(false);

        jLabel4.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(0, 204, 204));
        jLabel4.setText("      Usuario :                ");

        jTextField1.setBackground(new java.awt.Color(0, 0, 0));
        jTextField1.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField1.setForeground(new java.awt.Color(0, 204, 204));
        jTextField1.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField1.setDragEnabled(true);
        jTextField1.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel6Layout.createSequentialGroup()
                .addContainerGap(335, Short.MAX_VALUE)
                .addComponent(jLabel4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 285, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGroup(jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addGap(260, 260, 260))
        );

        add(jPanel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(-860, 350, 860, 40));

        jPanel7.setBackground(new java.awt.Color(0, 0, 0));
        jPanel7.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel7.setOpaque(false);

        jLabel6.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(0, 204, 204));
        jLabel6.setText("      Contraseña :         ");

        jPasswordField1.setBackground(new java.awt.Color(0, 0, 0));
        jPasswordField1.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jPasswordField1.setForeground(new java.awt.Color(0, 204, 204));
        jPasswordField1.setCaretColor(new java.awt.Color(255, 255, 255));
        jPasswordField1.setSelectionColor(new java.awt.Color(0, 0, 0));
        jPasswordField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jPasswordField1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel7Layout = new javax.swing.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel7Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel6)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPasswordField1, javax.swing.GroupLayout.PREFERRED_SIZE, 285, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel7Layout.createSequentialGroup()
                .addGroup(jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(jPasswordField1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(1, 1, 1))
        );

        add(jPanel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(-860, 385, 860, 40));

        jPanel5.setBackground(new java.awt.Color(0, 0, 0));
        jPanel5.setOpaque(false);
        jPanel5.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setOpaque(false);
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton9.setBackground(new java.awt.Color(255, 255, 255));
        jButton9.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton9.setForeground(new java.awt.Color(0, 153, 153));
        jButton9.setText("Aprendiz");
        jButton9.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton9.setDoubleBuffered(true);
        jButton9.setFocusPainted(false);
        jButton9.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton9ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton9, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 240, 30));

        jButton7.setBackground(new java.awt.Color(255, 255, 255));
        jButton7.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton7.setForeground(new java.awt.Color(0, 153, 153));
        jButton7.setText("Instructor");
        jButton7.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton7.setDoubleBuffered(true);
        jButton7.setFocusPainted(false);
        jButton7.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton7, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 240, 30));

        jButton8.setBackground(new java.awt.Color(255, 255, 255));
        jButton8.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton8.setForeground(new java.awt.Color(0, 153, 153));
        jButton8.setText("Administrador");
        jButton8.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton8.setDoubleBuffered(true);
        jButton8.setFocusPainted(false);
        jButton8.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton8, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 240, 30));

        jPanel5.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 5, 240, 140));

        jPanel2.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel2.setOpaque(false);
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        jPanel5.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 860, 40));

        jLabel7.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(0, 204, 204));
        jLabel7.setText("       Tipo :                      ");
        jPanel5.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(333, 6, 240, -1));

        jButton6.setBackground(new java.awt.Color(255, 255, 255));
        jButton6.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton6.setForeground(new java.awt.Color(0, 153, 153));
        jButton6.setText("▼");
        jButton6.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png")))); // NOI18N
        jButton6.setDoubleBuffered(true);
        jButton6.setFocusPainted(false);
        jButton6.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton6.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });
        jPanel5.add(jButton6, new org.netbeans.lib.awtextra.AbsoluteConstraints(810, 5, 45, 30));

        add(jPanel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(-860, 420, 860, 150));

        jPanel3.setOpaque(false);
        jPanel3.setLayout(new java.awt.GridLayout(1, 0));

        jButton10.setBackground(new java.awt.Color(255, 255, 255));
        jButton10.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton10.setForeground(new java.awt.Color(0, 153, 153));
        jButton10.setText("Ingresar");
        jButton10.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton10.setDoubleBuffered(true);
        jButton10.setFocusPainted(false);
        jButton10.setOpaque(false);
        jButton10.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton10.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton10ActionPerformed(evt);
            }
        });
        jPanel3.add(jButton10);

        jButton5.setBackground(new java.awt.Color(255, 255, 255));
        jButton5.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton5.setForeground(new java.awt.Color(0, 153, 153));
        jButton5.setText("Registrarse");
        jButton5.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton5.setDoubleBuffered(true);
        jButton5.setFocusPainted(false);
        jButton5.setOpaque(false);
        jButton5.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton5.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });
        jPanel3.add(jButton5);

        jButton11.setBackground(new java.awt.Color(255, 255, 255));
        jButton11.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton11.setForeground(new java.awt.Color(0, 153, 153));
        jButton11.setText("Recuperar Contraseña");
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

        add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(-510, 537, 510, 30));
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        
        desplegarBarra = !desplegarBarra;
        System.out.println(desplegarBarra);
        
        
        
    }//GEN-LAST:event_jButton6ActionPerformed

    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        
        jPanel1.add(jButton9, new org.netbeans.lib.awtextra.AbsoluteConstraints(jButton9.getLocation().x,
                                                                                jButton9.getLocation().y, 
                                                                                jButton9.getWidth(), 
                                                                                jButton9.getHeight()));
        jPanel1.add(jButton8, new org.netbeans.lib.awtextra.AbsoluteConstraints(jButton8.getLocation().x,
                                                                                jButton8.getLocation().y, 
                                                                                jButton8.getWidth(), 
                                                                                jButton8.getHeight()));
        
        datoBarraDesplegable="Instructor";
        desplegarBarra=false;
        
    }//GEN-LAST:event_jButton7ActionPerformed

    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
        
        jPanel1.add(jButton7, new org.netbeans.lib.awtextra.AbsoluteConstraints(jButton7.getLocation().x,
                                                                                jButton7.getLocation().y, 
                                                                                jButton7.getWidth(), 
                                                                                jButton7.getHeight()));
        jPanel1.add(jButton9, new org.netbeans.lib.awtextra.AbsoluteConstraints(jButton9.getLocation().x,
                                                                                jButton9.getLocation().y, 
                                                                                jButton9.getWidth(), 
                                                                                jButton9.getHeight()));
        datoBarraDesplegable="Administrador";
        desplegarBarra=false;
        
    }//GEN-LAST:event_jButton8ActionPerformed

    private void jButton9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton9ActionPerformed
        
        jPanel1.add(jButton7, new org.netbeans.lib.awtextra.AbsoluteConstraints(jButton7.getLocation().x,
                                                                                jButton7.getLocation().y, 
                                                                                jButton7.getWidth(), 
                                                                                jButton7.getHeight()));
        jPanel1.add(jButton8, new org.netbeans.lib.awtextra.AbsoluteConstraints(jButton8.getLocation().x,
                                                                                jButton8.getLocation().y, 
                                                                                jButton8.getWidth(), 
                                                                                jButton8.getHeight()));
        
        datoBarraDesplegable="Aprendiz";
        desplegarBarra=false;
        
        
    }//GEN-LAST:event_jButton9ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
       
        cerrarPanel=true;
        cambiarAPanel="PantallaDeRegistro";
        
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jPasswordField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jPasswordField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jPasswordField1ActionPerformed

    private void jButton10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton10ActionPerformed
        
        cerrarPanel=true;
        cambiarAPanel="PantallaPrincipalUsuario";
        
    }//GEN-LAST:event_jButton10ActionPerformed

    private void jButton11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton11ActionPerformed
        
        cerrarPanel=true;
        cambiarAPanel="PantallaRecuperarContraseña";
        
    }//GEN-LAST:event_jButton11ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton11;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}
