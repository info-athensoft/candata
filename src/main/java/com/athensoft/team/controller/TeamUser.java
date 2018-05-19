package com.athensoft.team.controller;

import java.util.ArrayList;
import java.util.Arrays;

public class TeamUser {
	private String name;
	private String password;
	private String teamRole;
	
	
	static final ArrayList<String> internList = new ArrayList<String>(Arrays.asList("liuyang","athens","admin"));
	static final ArrayList<String> memberList = new ArrayList<String>(Arrays.asList("athens","jovy","fangze","admin"));
	static final ArrayList<String> leaderList = new ArrayList<String>(Arrays.asList("athens","jovy","admin"));
	
	static ArrayList<TeamUser> teamUsers = new ArrayList<TeamUser>();
	static TeamUser u1 = new TeamUser("liuyang","athensoft",TeamRole.INTERNSHIP);
	static TeamUser u2 = new TeamUser("athens","zq314",TeamRole.MEMBER);
	static TeamUser u3 = new TeamUser("jovy","zq314",TeamRole.MEMBER);
	static TeamUser u4 = new TeamUser("fangze","fangze888",TeamRole.MEMBER);
	static TeamUser u5 = new TeamUser("admin","timon@927",TeamRole.LEADER);
	
	static {
		teamUsers.add(u1);
		teamUsers.add(u2);
		teamUsers.add(u3);
		teamUsers.add(u4);
		teamUsers.add(u5);
	}
	
	public TeamUser(){
		
	}
	
	private TeamUser(String name, String password, String teamRole) {	
		this.name = name;
		this.password = password;
		this.teamRole = teamRole;
	}
	
	public boolean equalsTo(TeamUser user){
		if(user==null){
			return false;
		}else{
			if(	this.name.equalsIgnoreCase(user.getName()) && 
				this.password.equalsIgnoreCase(user.getPassword()) &&
				this.teamRole.equalsIgnoreCase(user.getTeamRole())){
					return true;
			}
		}
		
		return false;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTeamRole() {
		return teamRole;
	}
	public void setTeamRole(String teamRole) {
		this.teamRole = teamRole;
	}
	@Override
	public String toString() {
		return "TeamUser [name=" + name + ", password=" + password + ", teamRole=" + teamRole + "]";
	}
	
	
	
	
	
	
}
