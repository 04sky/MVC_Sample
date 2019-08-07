package pojo;

public class Person {
	private Integer id;
	private Integer sex;
	private Integer birth;
	private Integer total_distance;
	private Integer total_time;
	
	public Person() {
		super();
	}
	public Person(Integer id, Integer sex, Integer birth, Integer total_distance, Integer total_time) {
		super();
		this.id = id;
		this.sex = sex;
		this.birth = birth;
		this.total_distance = total_distance;
		this.total_time = total_time;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public Integer getBirth() {
		return birth;
	}
	public void setBirth(Integer birth) {
		this.birth = birth;
	}
	public Integer getTotal_distance() {
		return total_distance;
	}
	public void setTotal_distance(Integer total_distance) {
		this.total_distance = total_distance;
	}
	public Integer getTotal_time() {
		return total_time;
	}
	public void setTotal_time(Integer total_time) {
		this.total_time = total_time;
	}
	@Override
	public String toString() {
		return "Person [id=" + id + ", sex=" + sex + ", birth=" + birth + ", total_distance=" + total_distance
				+ ", total_time=" + total_time + "]";
	}
	
	
}
