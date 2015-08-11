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
public class EditarDatos extends javax.swing.JPanel {

    int yBotonMover;
    boolean cerrarPanel=false,panelCerrado=false;
    String cambiarAPanel="";
    JPanel fila[]=new JPanel[30];
    
    public EditarDatos() {
        initComponents();
        moverComponentes.start();
    }

    Thread moverComponentes = new Thread("Mover panel"){

            @Override
            public void run() {
                
                while(true){
                    
                    if(cerrarPanel){
                        
                        removerBotones();
                        
                    }else{
                        
                        ubicarPaneles();
                        
                    }
                    
                    try {
                        
                        moverComponentes.join(5);
                    } catch (InterruptedException ex) {}
                    
                }

            }
    };
    
    public void extraerPropiedadesDeLasFilas(){

        fila[1]=jPanel6;
        fila[2]=jPanel7;
        fila[3]=jPanel8;
        fila[4]=jPanel9;
        fila[5]=jPanel10;
        fila[6]=jPanel11;
        fila[7]=jPanel12;
        fila[8]=jPanel13;
        fila[9]=jPanel15;
        fila[10]=jPanel17;
        fila[11]=jPanel18;
        fila[12]=jPanel19;
        fila[13]=jPanel20;
        fila[14]=jPanel24;
        fila[15]=jPanel25;
        fila[16]=jPanel26;
        
    }
    
    public void agregarPropiedadesDeLasFilas(){

        jPanel6=fila[1];
        jPanel7=fila[2];
        jPanel8=fila[3];
        jPanel9=fila[4];
        jPanel10=fila[5];
        jPanel11=fila[6];
        jPanel12=fila[7];
        jPanel13=fila[8];
        jPanel15=fila[9];
        jPanel17=fila[10];
        jPanel18=fila[11];
        jPanel19=fila[12];
        jPanel20=fila[13];
        jPanel24=fila[14];
        jPanel25=fila[15];
        jPanel26=fila[16];
        
    }
    
    public void ubicarPaneles(){

        if(jPanel4.getLocation().x<-10){

                jPanel4.setLocation(jPanel4.getLocation().x+20,25);
            
        }else
        if(jPanel1.getLocation().x<-10){

                jPanel1.setLocation(jPanel1.getLocation().x+20,jPanel1.getLocation().y);
            
        }else{
        
            ubicarFilas();
            ubicarBotones();
            
        }
        
    }
    
    public void removerPaneles(){

        if(jPanel1.getLocation().x>-510){

                jPanel1.setLocation(jPanel1.getLocation().x-20,jPanel1.getLocation().y);
            
        }else
        if(jPanel4.getLocation().x>-510){

                jPanel4.setLocation(jPanel4.getLocation().x-20,25);
            
        }else{
        
            panelCerrado=true;
        
        }
        
    }
    
    public void ubicarFilas(){
        
        extraerPropiedadesDeLasFilas();
                
        for(int i=1;i<=16;i++){

                if(jPanel3.getLocation().y+fila[i].getLocation().y+40< 224 &&
                   jPanel3.getLocation().y+fila[i].getLocation().y> 10){
                
                    if(fila[i].getLocation().x<-10){
                    
                        fila[i].setLocation(fila[i].getLocation().x+70,fila[i].getLocation().y);
                        
                        
                    }
                
                }else{
                    
                    if(fila[i].getLocation().x>-500){
                    
                        fila[i].setLocation(fila[i].getLocation().x-70,fila[i].getLocation().y);
                        
                         
                    }
                }
            
        }
        
        agregarPropiedadesDeLasFilas();
        
    }
    
    public void removerFilas(){

        extraerPropiedadesDeLasFilas();
                
        for(int i=16;i>=1;i--){
            
            if(fila[i].getLocation().x>-490){

                fila[i].setLocation(fila[i].getLocation().x-70,fila[i].getLocation().y);
                break;
                
            }else
            if(i==1){
            
                removerPaneles();
            
            }      
        }
        agregarPropiedadesDeLasFilas();
        
    }
    
    public void ubicarBotones(){

        if(jPanel27.getLocation().x<-10){

                jPanel27.setLocation(jPanel27.getLocation().x+20,jPanel27.getLocation().y);
                
        }
        
    }
    
    public void removerBotones(){

        if(jPanel27.getLocation().x>-300){

                jPanel27.setLocation(jPanel27.getLocation().x-20,jPanel27.getLocation().y);
                
        }else{
        
            removerFilas();
        
        }
        
    }
    
    
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel4 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jPanel6 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jPanel7 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jPanel8 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jPanel9 = new javax.swing.JPanel();
        jLabel8 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jPanel10 = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        jPasswordField1 = new javax.swing.JPasswordField();
        jPanel11 = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        jPasswordField2 = new javax.swing.JPasswordField();
        jPanel12 = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jPanel13 = new javax.swing.JPanel();
        jLabel11 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();
        jPanel15 = new javax.swing.JPanel();
        jPanel16 = new javax.swing.JPanel();
        jButton9 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jPanel14 = new javax.swing.JPanel();
        jLabel12 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        jPanel17 = new javax.swing.JPanel();
        jLabel13 = new javax.swing.JLabel();
        jTextField7 = new javax.swing.JTextField();
        jPanel18 = new javax.swing.JPanel();
        jLabel14 = new javax.swing.JLabel();
        jTextField8 = new javax.swing.JTextField();
        jPanel19 = new javax.swing.JPanel();
        jLabel15 = new javax.swing.JLabel();
        jTextField9 = new javax.swing.JTextField();
        jPanel20 = new javax.swing.JPanel();
        jPanel21 = new javax.swing.JPanel();
        jButton10 = new javax.swing.JButton();
        jButton11 = new javax.swing.JButton();
        jButton13 = new javax.swing.JButton();
        jPanel22 = new javax.swing.JPanel();
        jLabel16 = new javax.swing.JLabel();
        jPanel23 = new javax.swing.JPanel();
        jPanel24 = new javax.swing.JPanel();
        jLabel17 = new javax.swing.JLabel();
        jTextField10 = new javax.swing.JTextField();
        jPanel25 = new javax.swing.JPanel();
        jLabel18 = new javax.swing.JLabel();
        jTextField11 = new javax.swing.JTextField();
        jPanel26 = new javax.swing.JPanel();
        jLabel19 = new javax.swing.JLabel();
        jTextField12 = new javax.swing.JTextField();
        jPanel27 = new javax.swing.JPanel();
        jButton5 = new javax.swing.JButton();
        jButton14 = new javax.swing.JButton();
        jButton15 = new javax.swing.JButton();
        jButton16 = new javax.swing.JButton();

        setOpaque(false);
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel4.setBackground(new java.awt.Color(0, 0, 0));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel2.setFont(new java.awt.Font("Berlin Sans FB", 1, 24)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 204, 204));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Editar Datos");
        jLabel2.setDoubleBuffered(true);
        jPanel4.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 10, 430, 30));

        jLabel3.setFont(new java.awt.Font("Berlin Sans FB", 1, 80)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 204, 204));
        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoPrincipal.gif"))); // NOI18N
        jLabel3.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/borde.png")))); // NOI18N
        jLabel3.setDoubleBuffered(true);
        jPanel4.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(-10, 0, 520, 50));

        add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(-510, 25, 510, -1));

        jPanel1.setOpaque(false);
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setOpaque(false);
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel3.setOpaque(false);
        jPanel3.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                jPanel3MouseDragged(evt);
            }
        });
        jPanel3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jPanel3MousePressed(evt);
            }
        });
        jPanel3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel6.setBackground(new java.awt.Color(0, 0, 0));
        jPanel6.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel6.setOpaque(false);
        jPanel6.setLayout(new java.awt.GridLayout(1, 0));

        jLabel4.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(0, 204, 204));
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("Primer Nombre");
        jPanel6.add(jLabel4);

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
        jPanel6.add(jTextField1);

        jPanel3.add(jPanel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 10, 490, 40));

        jPanel7.setBackground(new java.awt.Color(0, 0, 0));
        jPanel7.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel7.setOpaque(false);
        jPanel7.setLayout(new java.awt.GridLayout(1, 0));

        jLabel5.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(0, 204, 204));
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("Segundo Nombre");
        jPanel7.add(jLabel5);

        jTextField2.setBackground(new java.awt.Color(0, 0, 0));
        jTextField2.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField2.setForeground(new java.awt.Color(0, 204, 204));
        jTextField2.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField2.setDragEnabled(true);
        jTextField2.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField2ActionPerformed(evt);
            }
        });
        jPanel7.add(jTextField2);

        jPanel3.add(jPanel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 45, 490, 40));

        jPanel8.setBackground(new java.awt.Color(0, 0, 0));
        jPanel8.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel8.setOpaque(false);
        jPanel8.setLayout(new java.awt.GridLayout(1, 0));

        jLabel6.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(0, 204, 204));
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("Primer Apellido");
        jPanel8.add(jLabel6);

        jTextField3.setBackground(new java.awt.Color(0, 0, 0));
        jTextField3.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField3.setForeground(new java.awt.Color(0, 204, 204));
        jTextField3.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField3.setDragEnabled(true);
        jTextField3.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField3ActionPerformed(evt);
            }
        });
        jPanel8.add(jTextField3);

        jPanel3.add(jPanel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 80, 490, 40));

        jPanel9.setBackground(new java.awt.Color(0, 0, 0));
        jPanel9.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel9.setOpaque(false);
        jPanel9.setLayout(new java.awt.GridLayout(1, 0));

        jLabel8.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(0, 204, 204));
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("Segundo Apellido");
        jPanel9.add(jLabel8);

        jTextField5.setBackground(new java.awt.Color(0, 0, 0));
        jTextField5.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField5.setForeground(new java.awt.Color(0, 204, 204));
        jTextField5.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField5.setDragEnabled(true);
        jTextField5.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField5ActionPerformed(evt);
            }
        });
        jPanel9.add(jTextField5);

        jPanel3.add(jPanel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 115, 490, 40));

        jPanel10.setBackground(new java.awt.Color(0, 0, 0));
        jPanel10.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel10.setOpaque(false);
        jPanel10.setLayout(new java.awt.GridLayout(1, 0));

        jLabel9.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(0, 204, 204));
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("Contraseña");
        jPanel10.add(jLabel9);

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
        jPanel10.add(jPasswordField1);

        jPanel3.add(jPanel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 150, 490, 40));

        jPanel11.setBackground(new java.awt.Color(0, 0, 0));
        jPanel11.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel11.setOpaque(false);
        jPanel11.setLayout(new java.awt.GridLayout(1, 0));

        jLabel10.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(0, 204, 204));
        jLabel10.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel10.setText("*Contraseña");
        jPanel11.add(jLabel10);

        jPasswordField2.setBackground(new java.awt.Color(0, 0, 0));
        jPasswordField2.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jPasswordField2.setForeground(new java.awt.Color(0, 204, 204));
        jPasswordField2.setCaretColor(new java.awt.Color(255, 255, 255));
        jPasswordField2.setSelectionColor(new java.awt.Color(0, 0, 0));
        jPasswordField2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jPasswordField2ActionPerformed(evt);
            }
        });
        jPanel11.add(jPasswordField2);

        jPanel3.add(jPanel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 185, 490, 40));

        jPanel12.setBackground(new java.awt.Color(0, 0, 0));
        jPanel12.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel12.setOpaque(false);
        jPanel12.setLayout(new java.awt.GridLayout(1, 0));

        jLabel7.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(0, 204, 204));
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("Nombre Usuario");
        jPanel12.add(jLabel7);

        jTextField4.setBackground(new java.awt.Color(0, 0, 0));
        jTextField4.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField4.setForeground(new java.awt.Color(0, 204, 204));
        jTextField4.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField4.setDragEnabled(true);
        jTextField4.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField4ActionPerformed(evt);
            }
        });
        jPanel12.add(jTextField4);

        jPanel3.add(jPanel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 220, 490, 40));

        jPanel13.setBackground(new java.awt.Color(0, 0, 0));
        jPanel13.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel13.setOpaque(false);
        jPanel13.setLayout(new java.awt.GridLayout(1, 0));

        jLabel11.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(0, 204, 204));
        jLabel11.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel11.setText("N° Documento");
        jPanel13.add(jLabel11);

        jTextField6.setBackground(new java.awt.Color(0, 0, 0));
        jTextField6.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField6.setForeground(new java.awt.Color(0, 204, 204));
        jTextField6.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField6.setDragEnabled(true);
        jTextField6.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField6ActionPerformed(evt);
            }
        });
        jPanel13.add(jTextField6);

        jPanel3.add(jPanel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 255, 490, 40));

        jPanel15.setBackground(new java.awt.Color(0, 0, 0));
        jPanel15.setOpaque(false);
        jPanel15.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel16.setOpaque(false);
        jPanel16.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton9.setBackground(new java.awt.Color(255, 255, 255));
        jButton9.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton9.setForeground(new java.awt.Color(0, 153, 153));
        jButton9.setText("CC");
        jButton9.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton9.setDoubleBuffered(true);
        jButton9.setFocusPainted(false);
        jButton9.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jPanel16.add(jButton9, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 205, 30));

        jButton7.setBackground(new java.awt.Color(255, 255, 255));
        jButton7.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton7.setForeground(new java.awt.Color(0, 153, 153));
        jButton7.setText("TI");
        jButton7.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton7.setDoubleBuffered(true);
        jButton7.setFocusPainted(false);
        jButton7.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jPanel16.add(jButton7, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 180, 30));

        jButton8.setBackground(new java.awt.Color(255, 255, 255));
        jButton8.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton8.setForeground(new java.awt.Color(0, 153, 153));
        jButton8.setText("CE");
        jButton8.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton8.setDoubleBuffered(true);
        jButton8.setFocusPainted(false);
        jButton8.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jPanel16.add(jButton8, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 180, 30));

        jButton6.setBackground(new java.awt.Color(255, 255, 255));
        jButton6.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton6.setForeground(new java.awt.Color(0, 153, 153));
        jButton6.setText("▼");
        jButton6.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png")))); // NOI18N
        jButton6.setDoubleBuffered(true);
        jButton6.setFocusPainted(false);
        jButton6.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton6.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jPanel16.add(jButton6, new org.netbeans.lib.awtextra.AbsoluteConstraints(205, 0, 35, 30));

        jPanel15.add(jPanel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(245, 5, 240, 120));

        jPanel14.setBackground(new java.awt.Color(0, 0, 0));
        jPanel14.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel14.setOpaque(false);
        jPanel14.setLayout(new java.awt.GridLayout(1, 0));

        jLabel12.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(0, 204, 204));
        jLabel12.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel12.setText("Tipo Documento");
        jPanel14.add(jLabel12);

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 240, Short.MAX_VALUE)
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 30, Short.MAX_VALUE)
        );

        jPanel14.add(jPanel5);

        jPanel15.add(jPanel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 490, -1));

        jPanel3.add(jPanel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 290, 490, 140));

        jPanel17.setBackground(new java.awt.Color(0, 0, 0));
        jPanel17.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel17.setOpaque(false);
        jPanel17.setLayout(new java.awt.GridLayout(1, 0));

        jLabel13.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel13.setForeground(new java.awt.Color(0, 204, 204));
        jLabel13.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel13.setText("Fecha Nacimiento");
        jPanel17.add(jLabel13);

        jTextField7.setBackground(new java.awt.Color(0, 0, 0));
        jTextField7.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField7.setForeground(new java.awt.Color(0, 204, 204));
        jTextField7.setText("Dia/Mes/Año");
        jTextField7.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField7.setDragEnabled(true);
        jTextField7.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField7ActionPerformed(evt);
            }
        });
        jPanel17.add(jTextField7);

        jPanel3.add(jPanel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 325, 490, 40));

        jPanel18.setBackground(new java.awt.Color(0, 0, 0));
        jPanel18.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel18.setOpaque(false);
        jPanel18.setLayout(new java.awt.GridLayout(1, 0));

        jLabel14.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel14.setForeground(new java.awt.Color(0, 204, 204));
        jLabel14.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel14.setText("Correo Electronico");
        jPanel18.add(jLabel14);

        jTextField8.setBackground(new java.awt.Color(0, 0, 0));
        jTextField8.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField8.setForeground(new java.awt.Color(0, 204, 204));
        jTextField8.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField8.setDragEnabled(true);
        jTextField8.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField8ActionPerformed(evt);
            }
        });
        jPanel18.add(jTextField8);

        jPanel3.add(jPanel18, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 360, 490, 40));

        jPanel19.setBackground(new java.awt.Color(0, 0, 0));
        jPanel19.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel19.setOpaque(false);
        jPanel19.setLayout(new java.awt.GridLayout(1, 0));

        jLabel15.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel15.setForeground(new java.awt.Color(0, 204, 204));
        jLabel15.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel15.setText("Correo Electronico");
        jPanel19.add(jLabel15);

        jTextField9.setBackground(new java.awt.Color(0, 0, 0));
        jTextField9.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField9.setForeground(new java.awt.Color(0, 204, 204));
        jTextField9.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField9.setDragEnabled(true);
        jTextField9.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField9ActionPerformed(evt);
            }
        });
        jPanel19.add(jTextField9);

        jPanel3.add(jPanel19, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 395, 490, 40));

        jPanel20.setBackground(new java.awt.Color(0, 0, 0));
        jPanel20.setOpaque(false);
        jPanel20.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel21.setOpaque(false);
        jPanel21.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton10.setBackground(new java.awt.Color(255, 255, 255));
        jButton10.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton10.setForeground(new java.awt.Color(0, 153, 153));
        jButton10.setText("Hombre");
        jButton10.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton10.setDoubleBuffered(true);
        jButton10.setFocusPainted(false);
        jButton10.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jPanel21.add(jButton10, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 205, 30));

        jButton11.setBackground(new java.awt.Color(255, 255, 255));
        jButton11.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton11.setForeground(new java.awt.Color(0, 153, 153));
        jButton11.setText("Mujer");
        jButton11.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton11.setDoubleBuffered(true);
        jButton11.setFocusPainted(false);
        jButton11.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/FondoBarrasDesplegables.png"))); // NOI18N
        jPanel21.add(jButton11, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 180, 30));

        jButton13.setBackground(new java.awt.Color(255, 255, 255));
        jButton13.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton13.setForeground(new java.awt.Color(0, 153, 153));
        jButton13.setText("▼");
        jButton13.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png")))); // NOI18N
        jButton13.setDoubleBuffered(true);
        jButton13.setFocusPainted(false);
        jButton13.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton13.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jPanel21.add(jButton13, new org.netbeans.lib.awtextra.AbsoluteConstraints(205, 0, 35, 30));

        jPanel20.add(jPanel21, new org.netbeans.lib.awtextra.AbsoluteConstraints(245, 5, 240, 70));

        jPanel22.setBackground(new java.awt.Color(0, 0, 0));
        jPanel22.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel22.setOpaque(false);
        jPanel22.setLayout(new java.awt.GridLayout(1, 0));

        jLabel16.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel16.setForeground(new java.awt.Color(0, 204, 204));
        jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel16.setText("Genero");
        jPanel22.add(jLabel16);

        javax.swing.GroupLayout jPanel23Layout = new javax.swing.GroupLayout(jPanel23);
        jPanel23.setLayout(jPanel23Layout);
        jPanel23Layout.setHorizontalGroup(
            jPanel23Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 240, Short.MAX_VALUE)
        );
        jPanel23Layout.setVerticalGroup(
            jPanel23Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 30, Short.MAX_VALUE)
        );

        jPanel22.add(jPanel23);

        jPanel20.add(jPanel22, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 490, -1));

        jPanel3.add(jPanel20, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 430, 490, 90));

        jPanel24.setBackground(new java.awt.Color(0, 0, 0));
        jPanel24.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel24.setOpaque(false);
        jPanel24.setLayout(new java.awt.GridLayout(1, 0));

        jLabel17.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel17.setForeground(new java.awt.Color(0, 204, 204));
        jLabel17.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel17.setText("Telefono Fijo");
        jPanel24.add(jLabel17);

        jTextField10.setBackground(new java.awt.Color(0, 0, 0));
        jTextField10.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField10.setForeground(new java.awt.Color(0, 204, 204));
        jTextField10.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField10.setDragEnabled(true);
        jTextField10.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField10ActionPerformed(evt);
            }
        });
        jPanel24.add(jTextField10);

        jPanel3.add(jPanel24, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 465, 490, 40));

        jPanel25.setBackground(new java.awt.Color(0, 0, 0));
        jPanel25.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel25.setOpaque(false);
        jPanel25.setLayout(new java.awt.GridLayout(1, 0));

        jLabel18.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel18.setForeground(new java.awt.Color(0, 204, 204));
        jLabel18.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel18.setText("Telefono Movil");
        jPanel25.add(jLabel18);

        jTextField11.setBackground(new java.awt.Color(0, 0, 0));
        jTextField11.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField11.setForeground(new java.awt.Color(0, 204, 204));
        jTextField11.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField11.setDragEnabled(true);
        jTextField11.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField11ActionPerformed(evt);
            }
        });
        jPanel25.add(jTextField11);

        jPanel3.add(jPanel25, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 500, 490, 40));

        jPanel26.setBackground(new java.awt.Color(0, 0, 0));
        jPanel26.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jPanel26.setOpaque(false);
        jPanel26.setLayout(new java.awt.GridLayout(1, 0));

        jLabel19.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 24)); // NOI18N
        jLabel19.setForeground(new java.awt.Color(0, 204, 204));
        jLabel19.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel19.setText("N° Ficha");
        jPanel26.add(jLabel19);

        jTextField12.setBackground(new java.awt.Color(0, 0, 0));
        jTextField12.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 18)); // NOI18N
        jTextField12.setForeground(new java.awt.Color(0, 204, 204));
        jTextField12.setCaretColor(new java.awt.Color(255, 255, 255));
        jTextField12.setDragEnabled(true);
        jTextField12.setSelectionColor(new java.awt.Color(0, 0, 0));
        jTextField12.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField12ActionPerformed(evt);
            }
        });
        jPanel26.add(jTextField12);

        jPanel3.add(jPanel26, new org.netbeans.lib.awtextra.AbsoluteConstraints(-490, 535, 490, 40));

        jPanel2.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 10, 510, 585));

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(-5, 5, 510, 235));

        add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(-510, 70, 510, 245));

        jPanel27.setOpaque(false);
        jPanel27.setLayout(new java.awt.GridLayout(1, 0));

        jButton5.setBackground(new java.awt.Color(255, 255, 255));
        jButton5.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton5.setForeground(new java.awt.Color(0, 153, 153));
        jButton5.setText("Volver");
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
        jPanel27.add(jButton5);

        jButton14.setBackground(new java.awt.Color(255, 255, 255));
        jButton14.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton14.setForeground(new java.awt.Color(0, 153, 153));
        jButton14.setText("Salir");
        jButton14.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton14.setDoubleBuffered(true);
        jButton14.setFocusPainted(false);
        jButton14.setOpaque(false);
        jButton14.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton14.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton14ActionPerformed(evt);
            }
        });
        jPanel27.add(jButton14);

        jButton15.setBackground(new java.awt.Color(255, 255, 255));
        jButton15.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton15.setForeground(new java.awt.Color(0, 153, 153));
        jButton15.setText("Guardar");
        jButton15.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton15.setDoubleBuffered(true);
        jButton15.setFocusPainted(false);
        jButton15.setOpaque(false);
        jButton15.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton15.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jPanel27.add(jButton15);

        jButton16.setBackground(new java.awt.Color(255, 255, 255));
        jButton16.setFont(new java.awt.Font("Segoe UI Symbol", 1, 14)); // NOI18N
        jButton16.setForeground(new java.awt.Color(0, 153, 153));
        jButton16.setText("Cancelar");
        jButton16.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeTabla.png")))); // NOI18N
        jButton16.setDoubleBuffered(true);
        jButton16.setFocusPainted(false);
        jButton16.setOpaque(false);
        jButton16.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jButton16.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/bordeBoton.png"))); // NOI18N
        jPanel27.add(jButton16);

        add(jPanel27, new org.netbeans.lib.awtextra.AbsoluteConstraints(-300, 310, 300, 30));
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void jTextField2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField2ActionPerformed

    private void jTextField3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField3ActionPerformed

    private void jTextField5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField5ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField5ActionPerformed

    private void jPasswordField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jPasswordField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jPasswordField1ActionPerformed

    private void jPasswordField2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jPasswordField2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jPasswordField2ActionPerformed

    private void jTextField4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField4ActionPerformed

    private void jTextField6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField6ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField6ActionPerformed

    private void jTextField7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField7ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField7ActionPerformed

    private void jTextField8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField8ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField8ActionPerformed

    private void jTextField9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField9ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField9ActionPerformed

    private void jTextField10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField10ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField10ActionPerformed

    private void jTextField11ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField11ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField11ActionPerformed

    private void jTextField12ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField12ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField12ActionPerformed

    private void jPanel3MousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel3MousePressed
    
        yBotonMover = evt.getY();
        
    }//GEN-LAST:event_jPanel3MousePressed

    private void jPanel3MouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel3MouseDragged
      
        if((jPanel3.getLocation().y + evt.getY()-yBotonMover)>=(jPanel2.getHeight()-jPanel3.getHeight()-10)&&
           (jPanel3.getLocation().y + evt.getY()-yBotonMover)<=10){
        
            jPanel3.setLocation(jPanel3.getLocation().x,jPanel3.getLocation().y + evt.getY()-yBotonMover);
        
        }else{
        
            if((jPanel3.getLocation().y + evt.getY()-yBotonMover)<=(jPanel2.getHeight()-jPanel3.getHeight()-10)){
            
                jPanel3.setLocation(jPanel3.getLocation().x,(jPanel2.getHeight()-jPanel3.getHeight()-10));
            
            }
            
            if((jPanel3.getLocation().y + evt.getY()-yBotonMover)>=10){
            
                jPanel3.setLocation(jPanel3.getLocation().x,10);
            
            }
        
        
        }
        
        
    }//GEN-LAST:event_jPanel3MouseDragged

    private void jButton14ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton14ActionPerformed
        
        cambiarAPanel="PantallaDeInicio";
        cerrarPanel=true;
        
    }//GEN-LAST:event_jButton14ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        
        cambiarAPanel="PantallaPrincipalUsuario";
        cerrarPanel=true;
        
    }//GEN-LAST:event_jButton5ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton11;
    private javax.swing.JButton jButton13;
    private javax.swing.JButton jButton14;
    private javax.swing.JButton jButton15;
    private javax.swing.JButton jButton16;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel10;
    private javax.swing.JPanel jPanel11;
    private javax.swing.JPanel jPanel12;
    private javax.swing.JPanel jPanel13;
    private javax.swing.JPanel jPanel14;
    private javax.swing.JPanel jPanel15;
    private javax.swing.JPanel jPanel16;
    private javax.swing.JPanel jPanel17;
    private javax.swing.JPanel jPanel18;
    private javax.swing.JPanel jPanel19;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel20;
    private javax.swing.JPanel jPanel21;
    private javax.swing.JPanel jPanel22;
    private javax.swing.JPanel jPanel23;
    private javax.swing.JPanel jPanel24;
    private javax.swing.JPanel jPanel25;
    private javax.swing.JPanel jPanel26;
    private javax.swing.JPanel jPanel27;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JPasswordField jPasswordField2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField10;
    private javax.swing.JTextField jTextField11;
    private javax.swing.JTextField jTextField12;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JTextField jTextField8;
    private javax.swing.JTextField jTextField9;
    // End of variables declaration//GEN-END:variables
}
