package models;

public class Cliente {
	private String ide_cli;
	private String nom_cli;
	private String ape_cli;
	private String mail_cli;
	private String contra_cli;
	private String dire_cli;
	private int telefo_cli;
	
	
	@Override
	public String toString() {
		return "Cliente [ide_cli=" + ide_cli + ", nom_cli=" + nom_cli + ", ape_cli=" + ape_cli + ", mail_cli="
				+ mail_cli + ", contra_cli=" + contra_cli + ", dire_cli=" + dire_cli + ", telefo_cli=" + telefo_cli
				+ "]";
	}
	public Cliente() {
		super();
	}
	public Cliente(String ide_cli, String nom_cli, String ape_cli, String mail_cli, String contra_cli, String dire_cli,
			int telefo_cli) {
		super();
		this.ide_cli = ide_cli;
		this.nom_cli = nom_cli;
		this.ape_cli = ape_cli;
		this.mail_cli = mail_cli;
		this.contra_cli = contra_cli;
		this.dire_cli = dire_cli;
		this.telefo_cli = telefo_cli;
	}
	public String getIde_cli() {
		return ide_cli;
	}
	public void setIde_cli(String ide_cli) {
		this.ide_cli = ide_cli;
	}
	public String getNom_cli() {
		return nom_cli;
	}
	public void setNom_cli(String nom_cli) {
		this.nom_cli = nom_cli;
	}
	public String getApe_cli() {
		return ape_cli;
	}
	public void setApe_cli(String ape_cli) {
		this.ape_cli = ape_cli;
	}
	public String getMail_cli() {
		return mail_cli;
	}
	public void setMail_cli(String mail_cli) {
		this.mail_cli = mail_cli;
	}
	public String getContra_cli() {
		return contra_cli;
	}
	public void setContra_cli(String contra_cli) {
		this.contra_cli = contra_cli;
	}
	public String getDire_cli() {
		return dire_cli;
	}
	public void setDire_cli(String dire_cli) {
		this.dire_cli = dire_cli;
	}
	public int getTelefo_cli() {
		return telefo_cli;
	}
	public void setTelefo_cli(int telefo_cli) {
		this.telefo_cli = telefo_cli;
	}
	
	

}
