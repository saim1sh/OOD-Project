package university.management.system;

import javax.swing.*;
import java.awt.*;

public class About extends JFrame {
    About(){

        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icon/loginback.jpg"));
        Image i2 = i1.getImage().getScaledInstance(300, 200, Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel img = new JLabel(i3);
        img.setBounds(350,0,300,200);
        add(img);

        JLabel heading = new JLabel("<html><br>Said Hussain Saim </br>ID : 232-35-429 </br><br>Section : J - 41 </br></html>");
        heading.setBounds(70,20,300,230);
        heading.setFont(new Font("Tahoma", Font.BOLD,30));
        add(heading);

        JLabel name = new JLabel("<html><h2>University Management System</h2></html>");
        name.setBounds(60,260,550,40);
        name.setFont(new Font("Tahoma", Font.BOLD,30));
        add(name);

        JLabel contact = new JLabel("<html><h2>@2025-2026 DIU | All Right Reserved.</h2></html>");
        contact.setBounds(70,340,550,40);
        contact.setFont(new Font("Tahoma", Font.BOLD,30));
        add(contact);

        setSize(700,500);
        setLocation(400,150);
        getContentPane().setBackground(new Color(255,145,77));
        setLayout(null);
        setVisible(true);

    }
    public static void main(String[] args) {
        new About();
    }
}