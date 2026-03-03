package member.vo;

public class MemberVO {
	private String mem_no;
	private String mem_id;
	private String mem_pw;
	private String mem_nm;
	private int mem_rank;
	private String loc;
	private String mem_detail_addr;
	private String mem_tel;
	private String mem_dy;
	public String getMem_no() {
		return mem_no;
	}
	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_nm() {
		return mem_nm;
	}
	public void setMem_nm(String mem_nm) {
		this.mem_nm = mem_nm;
	}
	public int getMem_rank() {
		return mem_rank;
	}
	public void setMem_rank(int mem_rank) {
		this.mem_rank = mem_rank;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getMem_detail_addr() {
		return mem_detail_addr;
	}
	public void setMem_detail_addr(String mem_detail_addr) {
		this.mem_detail_addr = mem_detail_addr;
	}
	public String getMem_tel() {
		return mem_tel;
	}
	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}
	public String getMem_dy() {
		return mem_dy;
	}
	public void setMem_dy(String mem_dy) {
		this.mem_dy = mem_dy;
	}
	
	@Override
	public String toString() {
		return "MemberVO [mem_no=" + mem_no + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_nm=" + mem_nm
				+ ", mem_rank=" + mem_rank + ", loc=" + loc + ", mem_detail_addr=" + mem_detail_addr + ", mem__tel="
				+ mem_tel + ", mem_dy=" + mem_dy + "]";
	}
	
}   

