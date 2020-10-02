package persistence;

import org.jcommon.encryption.SimpleMD5;

import entity.Login;

public class LoginDao extends Dao{

	public String gerarCriptografia(String senha) {
		SimpleMD5 md5 = new SimpleMD5(senha, "lucasalmeidaforgit");
		return md5.toHexString();
	}
	
	
	public void create(Login l) throws Exception{
		open();
			l.setSenha(gerarCriptografia(l.getSenha()));
			stmt = con.prepareStatement("insert into login values(null,?,?)");
			stmt.setString(1, l.getEmail());
			stmt.setString(2, l.getSenha());
			stmt.execute();
			stmt.close();		
		close();
	}
	
	public Login findByEmailAndId(Login l) throws Exception{
		open();
			l.setSenha(gerarCriptografia(l.getSenha()));
			stmt = con.prepareStatement("select * from login where email=? and senha=?");
			stmt.setString(1, l.getEmail());
			stmt.setString(2, l.getSenha());
			rs = stmt.executeQuery();
			Login login = null;
			if(rs.next()){
				login = new Login(rs.getInt(1),rs.getString(1), rs.getString(2));
			}
			stmt.close();
		close();
		return login;
	}
	
	
}
