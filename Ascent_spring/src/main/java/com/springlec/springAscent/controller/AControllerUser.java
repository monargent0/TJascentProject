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
	
	
	@Autowired
	public void auto(ACommand logIn, ACommand signIn, ACommand signOut, ACommand duplicateID 
			, ACommand findID, ACommand findPW, ACommand profile, ACommand profileModify, ACommand modifyPW) {
		this.loginCommand = logIn;
		this.signinCommand = signIn;
		this.signoutCommand = signOut;
		this.duplicateIDCommand = duplicateID;
		this.findIDCommand = findID;
		this.findPWCommand = findPW;
		this.profileCommand = profile;
		this.profilemodifyCommand = profileModify;
		this.modifyPWCommand = modifyPW;
		
	}
	// 임시 메인화면
//	@RequestMapping("/main")
//	public String main() {
//		return "mainV";
//	}
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
	@RequestMapping("logOutH")
	public String logout() {
		return "logOutH";
	}
	// 회원가입 약관 동의
	@RequestMapping("/signAgreeV")
	public String signAgree() {
		return "signAgreeV";
	}
	// 회원가입 화면
	@RequestMapping("/signInV")
	public String signInV() {
		return "signInV";
	}
	// 회원가입
	@RequestMapping("/signIn.do")
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
	@RequestMapping("/signOut.do")
	public String signOut(HttpServletRequest request) {
		signoutCommand.execute1(sqlSession, request);
		return (String)request.getAttribute("return");
	}
	// 마이페이지 화면
	@RequestMapping("/myPageV")
	public String mypageV() {
		return "myPageV";
	}
	// 아이디 중복 체크 화면
	@RequestMapping("/duplicateIDV")
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
	@RequestMapping("/findID.do")
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
	@RequestMapping("/findPW.do")
	public String findPWRV(HttpServletRequest request , Model model) {
		findPWCommand.execute3(sqlSession, request, model);
		return "findPWRV";
	}
	// 회원정보
	@RequestMapping("/profile.do")
	public String profile(HttpServletRequest request , Model model) {
		profileCommand.execute3(sqlSession, request, model);
		return "myProfileV";
	}
	// 회원정보 수정화면
	@RequestMapping("/myProfileModifyV")
	public String myprofileV(HttpServletRequest request , Model model) {
		profileCommand.execute3(sqlSession, request, model);
		return "myProfileModifyV";
	}
	// 회원정보 수정
	@RequestMapping("/profileModify.do")
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
	@RequestMapping("/myPWModify.do")
	public String pwmodify(HttpServletRequest request , Model model) {
		modifyPWCommand.execute3(sqlSession, request, model);
		return "myPWModifyV";
	}
}
