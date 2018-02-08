package formulario;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;

import bean.usuario;
import mantenimiento.gestionUsuario;

import java.awt.Font;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class logueo extends JFrame {

	private JPanel contentPane;
	private JTextField txt_usu;
	private JPasswordField txt_pass;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					logueo frame = new logueo();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public logueo() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 314, 264);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblUsuario = new JLabel("Usuario");
		lblUsuario.setBounds(30, 95, 61, 14);
		contentPane.add(lblUsuario);
		
		JLabel lblContrasea = new JLabel("Contrase\u00F1a");
		lblContrasea.setBounds(10, 124, 81, 14);
		contentPane.add(lblContrasea);
		
		txt_usu = new JTextField();
		txt_usu.setBounds(106, 92, 149, 20);
		contentPane.add(txt_usu);
		txt_usu.setColumns(10);
		
		txt_pass = new JPasswordField();
		txt_pass.setBounds(106, 121, 149, 20);
		contentPane.add(txt_pass);
		
		JButton btn_ok = new JButton("Aceptar");
		btn_ok.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				ingresar();
			}
		});
		btn_ok.setBounds(55, 155, 89, 42);
		contentPane.add(btn_ok);
		
		JLabel lblLogin = new JLabel("Login");
		lblLogin.setFont(new Font("Tahoma", Font.PLAIN, 43));
		lblLogin.setBounds(88, 11, 102, 52);
		contentPane.add(lblLogin);
		
		JButton btn_sal = new JButton("Salir");
		btn_sal.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				salir();
			}
		});
		btn_sal.setBounds(164, 155, 89, 42);
		contentPane.add(btn_sal);
	}

	protected void ingresar() {
		String Usu = txt_usu.getText();
		String Pwd = String.valueOf(txt_pass.getPassword());
		
		gestionUsuario getUsu = new gestionUsuario();
		
		usuario xusuario = new usuario();
		xusuario.setUsername(Usu);
		xusuario.setPswd(Pwd);
		
		usuario xusu = getUsu.obtenerUsuario(xusuario);
		
		if (xusu!=null) {
			JOptionPane.showMessageDialog(contentPane, "Bienvenido");
		}else {
			JOptionPane.showMessageDialog(contentPane, "Contraseña Errada..!!","Error",JOptionPane.ERROR_MESSAGE);
		}
		
	}

	protected void salir() {
		System.exit(0);		
	}

}
