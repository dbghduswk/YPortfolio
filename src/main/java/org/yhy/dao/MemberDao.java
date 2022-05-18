package org.yhy.dao;



import org.yhy.model.MemberDTO;

public interface MemberDao {
	public void MemberInsert(MemberDTO mdto);

	public MemberDTO Memberlogin(MemberDTO mdto);
	


	

}
