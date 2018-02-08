	package bean;

public class usuario {

	private int idU;
	private String username;
	private String pswd;
	
	public int getidU() {
		return idU;
	}

	public void setidU(int idU) {
		this.idU = idU;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPswd() {
		return pswd;
	}

	public void setPswd(String pswd) {
		this.pswd = pswd;
	}

	public usuario(int idU, String username, String pswd) {
		
		this.idU = idU;
		this.username = username;
		this.pswd = pswd;
	}

	public usuario() {
		
	}
}
