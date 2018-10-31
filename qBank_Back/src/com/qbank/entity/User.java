package com.qbank.entity;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import org.compass.annotations.Searchable;

/**
 * @Description：实体类
 * @ClassName: User.java
 * @Author：LittleVv
 * @Date：2016-3-3
 * -----------------变更历史-----------------
 * 如：who  2015-6-30  修改xx功能
 */

@Entity
@Searchable
public class User extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;//用户名
	private Integer sex;//用户性别
	private String email;//用户邮箱地址
	private String password;//用户登录密码
	private String address;//用户地址
	private String phoneNumber;//用户电话号码
	private String realName;//用户真实姓名
	private Integer degree;//用户学历，通过网站字典获得数值
	private Integer isMarriage;//用户是否结婚
	private Integer income;//用户收入
	private Integer isHouse;//用户是否有住房；
	private BigDecimal houseValue;//用户房屋价值，可以为空
	private Integer age;//用户年龄
	private Integer isCar;//用户是否拥有车辆
	private BigDecimal carValue;//用户车辆价值
	private String idNumber;//用户身份证号码
	private String iconUrl;//用户头像地址。图片存放在服务器上面
	private String cashPassword;//用户提现密码
	private String notifition;//用户通知设置，短信通知，邮件通知等等
	private String grade;//用户等级
	private Integer credit;//用户信用等级,修改为信用等级对象
	private String infoCheck;//用户信息审核
	
	@Column(length=60)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}

	@Column(length=60)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Column(length=60)
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Column(length=100)
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	@Column(length=40)
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Column(length=40)
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public Integer getDegree() {
		return degree;
	}
	public void setDegree(Integer degree) {
		this.degree = degree;
	}
	public Integer getIsMarriage() {
		return isMarriage;
	}
	public void setIsMarriage(Integer isMarriage) {
		this.isMarriage = isMarriage;
	}
	public Integer getIncome() {
		return income;
	}
	public void setIncome(Integer income) {
		this.income = income;
	}
	public Integer getIsHouse() {
		return isHouse;
	}
	public void setIsHouse(Integer isHouse) {
		this.isHouse = isHouse;
	}
	public BigDecimal getHouseValue() {
		return houseValue;
	}
	public void setHouseValue(BigDecimal houseValue) {
		this.houseValue = houseValue;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Integer getIsCar() {
		return isCar;
	}
	public void setIsCar(Integer isCar) {
		this.isCar = isCar;
	}
	public BigDecimal getCarValue() {
		return carValue;
	}
	public void setCarValue(BigDecimal carValue) {
		this.carValue = carValue;
	}

	@Column(length=40)
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	
	
	public String getIconUrl() {
		return iconUrl;
	}
	public void setIconUrl(String iconUrl) {
		this.iconUrl = iconUrl;
	}
	@Column(length=60)
	public String getCashPassword() {
		return cashPassword;
	}
	public void setCashPassword(String cashPassword) {
		this.cashPassword = cashPassword;
	}

	@Column(length=20)
	public String getNotifition() {
		return notifition;
	}
	public void setNotifition(String notifition) {
		this.notifition = notifition;
	}

	@Column(length=100)
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Integer getCredit() {
		return credit;
	}
	public void setCredit(Integer credit) {
		this.credit = credit;
	}
	@Column(length=40)
	public String getInfoCheck() {
		return infoCheck;
	}
	public void setInfoCheck(String infoCheck) {
		this.infoCheck = infoCheck;
	}
	
	

}
