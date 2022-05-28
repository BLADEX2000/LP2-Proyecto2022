package models;

public class Producto {
     
	private int    ide_pro;
	private String ide_cat;
	private String nom_pro;
	private String mod_pro;
	private String mar_pro;
	private String des_pro;
	private int    esta_pro;
	
	@Override
	public String toString() {
		return "Producto [ide_pro=" + ide_pro + ", ide_cat=" + ide_cat + ", nom_pro=" + nom_pro + ", mod_pro=" + mod_pro
				+ ", mar_pro=" + mar_pro + ", des_pro=" + des_pro + ", esta_pro=" + esta_pro + "]";
	}
	public Producto() {
		super();
	}
	public Producto(int ide_pro, String ide_cat, String nom_pro, String mod_pro, String mar_pro, String des_pro,
			int esta_pro) {
		super();
		this.ide_pro = ide_pro;
		this.ide_cat = ide_cat;
		this.nom_pro = nom_pro;
		this.mod_pro = mod_pro;
		this.mar_pro = mar_pro;
		this.des_pro = des_pro;
		this.esta_pro = esta_pro;
	}
	public int getIde_pro() {
		return ide_pro;
	}
	public void setIde_pro(int ide_pro) {
		this.ide_pro = ide_pro;
	}
	public String getIde_cat() {
		return ide_cat;
	}
	public void setIde_cat(String ide_cat) {
		this.ide_cat = ide_cat;
	}
	public String getNom_pro() {
		return nom_pro;
	}
	public void setNom_pro(String nom_pro) {
		this.nom_pro = nom_pro;
	}
	public String getMod_pro() {
		return mod_pro;
	}
	public void setMod_pro(String mod_pro) {
		this.mod_pro = mod_pro;
	}
	public String getMar_pro() {
		return mar_pro;
	}
	public void setMar_pro(String mar_pro) {
		this.mar_pro = mar_pro;
	}
	public String getDes_pro() {
		return des_pro;
	}
	public void setDes_pro(String des_pro) {
		this.des_pro = des_pro;
	}
	public int getEsta_pro() {
		return esta_pro;
	}
	public void setEsta_pro(int esta_pro) {
		this.esta_pro = esta_pro;
	}
	
	
}
