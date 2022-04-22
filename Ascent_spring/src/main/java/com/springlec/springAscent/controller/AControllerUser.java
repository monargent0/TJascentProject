package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;

@Controller
public class AControllerUser {
	
	@Autowired
	private SqlSession sqlSession;
	
	private ACommand loginCommand = null;
	private ACommand signinCommand = null;
	private ACommand signoutCommand = null;
	private ACommand duplicateIDCommand = null;
	private ACommand findIDCommand = null;
	private ACommand findPWCommand = null;
	private ACommand profileCommand = null;
	private ACommand profilemodifyCommand = null;
	private ACommand modifyPWCommand = null;
	private ACommand adrsListCommand = null;
	private ACommand adrsWriteCommand = null;
	private ACommand adrsDeleteCommand = null;
	
	
	@Autowired
	public void auto(ACommand logIn, ACommand signIn, ACommand signOut, ACommand duplicateID , 
			ACommand findID, ACommand findPW, ACommand profile, ACommand profileModify, ACommand modifyPW,
			ACommand adrslist, ACommand adrswrite, ACommand adrsdelete) {
		this.loginCommand = logIn;
		this.signinCommand = signIn;
		this.signoutCommand = signOut;
		this.duplicateIDCommand = duplicateID;
		this.findIDCommand = findID;
		this.findPWCommand = findPW;
		this.profileCommand = profile;
		this.profilemodifyCommand = profileModify;
		this.modifyPWCommand = modifyPW;
		this.adrsListCommand = adrslist;
		this.adrsDeleteCommand = adrsdelete;
		this.adrsWriteCommand = adrswrite;
	}

	// 로그인 화면
	@RequestMapping("/logInV")
	public String loginV() {
		return "logInV";
	}
	// 로그인 작동
	@RequestMapping("/logIn")
	public String login(HttpServletRequest request) {
		loginCommand.execute1(sqlSession, request);
		return (String)request.getAttribute("return");
	}
	// 로그아웃
	@RequestMapping("logOut")
	public String logout() {
		return "logOutH";
	}
	// 회원가입 약관 동의
	@RequestMapping("/signAgree")
	public String signAgree() {
		return "signAgreeV";
	}
	// 회원가입 화면
	@RequestMapping("/signInV")
	public String signInV() {
		return "signInV";
	}
	// 회원가입
	@RequestMapping("/signIn")
	public String signIn(HttpServletRequest request) {
		signinCommand.execute1(sqlSession, request);
		return "signInH";
	}
	// 회원탈퇴 화면
	@RequestMapping("signOutV")
	public String signoutV() {
		return "signOutV";
	}
	// 회원탈퇴
	@RequestMapping("/signOut")
	public String signOut(HttpServletRequest request) {
		signoutCommand.execute1(sqlSession, request);
		return (String)request.getAttribute("return");
	}
	// 마이페이지 화면
	@RequestMapping("/myPage")
	public String mypageV() {
		return "myPageV";
	}
	// 아이디 중복 체크 화면
	@RequestMapping("/duplicateID")
	public String duplicateIDV() {
		return "duplicateIDV";
	}
	// 아이디 중복 체크
	@RequestMapping("/duplicateResult")
	public String duplicateCheck(HttpServletRequest request) {
		duplicateIDCommand.execute1(sqlSession, request);
		return "duplicateIDRV";
	}
	// 아이디 찾기 화면
	@RequestMapping("/findIDV")
	public String findIDV() {
		return "findIDV";
	}
	// 아이디 찾기
	@RequestMapping("/findID")
	public String findIDRV(HttpServletRequest request, Model model) {
		findIDCommand.execute3(sqlSession, request, model);
		return "findIDRV";
	}
	// 비밀번호 찾기 화면
	@RequestMapping("/findPWV")
	public String findPWV() {
		return "findPWV";
	}
	// 비밀번호 찾기
	@RequestMapping("/findPW")
	public String findPWRV(HttpServletRequest request , Model model) {
		findPWCommand.execute3(sqlSession, request, model);
		return "findPWRV";
	}
	// 회원정보
	@RequestMapping("/profile")
	public String profile(HttpServletRequest request , Model model) {
		profileCommand.execute3(sqlSession, request, model);
		return "myProfileV";
	}
	// 회원정보 수정화면
	@RequestMapping("/myProfileModify")
	public String myprofileV(HttpServletRequest request , Model model) {
		profileCommand.execute3(sqlSession, request, model);
		return "myProfileModifyV";
	}
	// 회원정보 수정
	@RequestMapping("/profileModify")
	public String profileModify(HttpServletRequest request) {
		profilemodifyCommand.execute1(sqlSession, request);
		return "redirect:profile.do";
	}
	// 비밀번호 변경화면
	@RequestMapping("/myPWModify")
	public String pwmodifyV() {
		return "myPWModifyV";
	}
	// 비밀번호 변경
	@RequestMapping("/pwModify")
	public String pwmodify(HttpServletRequest request , Model model) {
		modifyPWCommand.execute3(sqlSession, request, model);
		return "myPWModifyV";
	}
	// 비밀번호 변경성공시 (아이디 세션 삭제 후 로그인화면으로 보냄)
	@RequestMapping("/myPWModifyH")
	public String pwmodifyH() {
		return "myPWModifyH";
	}
	// 주소록 리스트
	@RequestMapping("/addressList")
	public String adrsList(HttpServletRequest request, Model model) {
		adrsListCommand.execute3(sqlSession, request, model);
		return "myAddressListV";
	}
	// 주소록 추가화면
	@RequestMapping("/addressWrite")
	public String adrsWrite() {
		return "myAddressWriteV";
	}
	// 주소록 추가
	@RequestMapping("/addAddress")
	public String addAdrs(HttpServletRequest request) {
		adrsWriteCommand.execute1(sqlSession, request);
		return "redirect:addressList";
	}
	// 주소록 삭제
	@RequestMapping("/deleteAddress")
	public String delAdrs(HttpServletRequest request) {
		adrsDeleteCommand.execute1(sqlSession, request);
		return "redirect:myAddressList";
	}
	
}
