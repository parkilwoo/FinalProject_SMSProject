package com.boot.finalpro.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.boot.finalpro.dao.LeagueMatchDAO;
import com.boot.finalpro.model.AuthoritiesDTO;
import com.boot.finalpro.model.BookingDTO;
import com.boot.finalpro.model.GameDTO;
import com.boot.finalpro.model.LeagueMatchDTO;
import com.boot.finalpro.model.MessageDTO;
import com.boot.finalpro.model.NoChatDTO;
import com.boot.finalpro.model.TeamDTO;
import com.boot.finalpro.model.TeamDetailDTO;

@Repository
public class LeagueMatchDAOImpl implements LeagueMatchDAO {

	@Autowired
	SqlSession sqlSession;

	String ns = "league.";

	@Override
	public List<GameDTO> nowdata() {

		return sqlSession.selectList(ns + "nowdata");
	}

	@Override
	public List<GameDTO> olddata(String yyyymm) {

		return sqlSession.selectList(ns + "olddata", yyyymm);
	}

	@Override
	public List<TeamDetailDTO> Ranksearch(String category) {

		return sqlSession.selectList(ns + "Ranksearch", category);
	}

	@Override
	public List<LeagueMatchDTO> acceptlist() {

		return sqlSession.selectList(ns + "acceptlist");
	}

	@Override
	public boolean messagesend(MessageDTO dto) {

		int n = sqlSession.insert(ns + "messagesend", dto);

		return n > 0 ? true : false;
	}

	@Override
	public boolean write8league(GameDTO dto) {

		int n = sqlSession.insert(ns + "write8league", dto);

		return n > 0 ? true : false;
	}

	@Override
	public boolean writeleague(GameDTO dto) {

		int n = sqlSession.insert(ns + "writeleague", dto);

		return n > 0 ? true : false;
	}

	@Override
	public boolean writebooking(BookingDTO dto) {

		int n = sqlSession.insert(ns + "bookGame", dto);

		return n > 0 ? true : false;
	}

	@Override
	public int leaguecheck() {

		return sqlSession.selectOne(ns + "leaguecheck");
	}

	@Override
	public boolean LeagueMatchDelete() {

		int n = sqlSession.delete(ns + "LeagueMatchDelete");

		return n > 0 ? true : false;
	}

	@Override
	public int LeagueMatchSearch(String id) {

		return sqlSession.selectOne(ns + "MatchSearch", id);
	}

	@Override
	public boolean LeagueMatchWrite(LeagueMatchDTO dto) {

		int n = sqlSession.insert(ns + "MatchWrite", dto);

		return n > 0 ? true : false;
	}

	@Override
	public TeamDTO TeamSearch(String id) {

		return sqlSession.selectOne(ns + "TeamSearch", id);
	}

	@Override
	public GameDTO GameSearch(String league) {

		return sqlSession.selectOne(ns + "GameSearch", league);
	}

	@Override
	public boolean leagueUpdate1(GameDTO dto) {

		int n = sqlSession.update(ns + "leagueUpdate1", dto);

		return n > 0 ? true : false;
	}
	@Override
	public boolean leagueUpdate2(GameDTO dto) {

		int n = sqlSession.update(ns + "leagueUpdate2", dto);

		return n > 0 ? true : false;
	}

	@Override
	public boolean leagueEnd(String yyyymm) {

		int n = sqlSession.update(ns + "leagueEnd", yyyymm);

		return n > 0 ? true : false;
	}

	@Override
	public AuthoritiesDTO AuthSearch(String id) {

		return sqlSession.selectOne(ns + "AuthSearch", id);
	}

	@Override
	public boolean LeagueMatchCancel(String id) {

		int n = sqlSession.delete(ns + "LeagueCancel", id);

		return n > 0 ? true : false;
	}

	@Override
	public TeamDTO ChatTeamCheck(String id) {
		
		return sqlSession.selectOne(ns + "ChatTeamCheck", id);
	}

	@Override
	public NoChatDTO NoChatSearch(String id) {
		
		return sqlSession.selectOne(ns + "NoChatSearch", id);
	}

	@Override
	public boolean NoChatWrite(NoChatDTO dto) {
		
		int n = sqlSession.insert(ns + "NoChatWrite", dto);

		return n > 0 ? true : false;
	}

	@Override
	public boolean NoChatUpdate(NoChatDTO dto) {
		
		int n = sqlSession.update(ns + "NoChatUpdate", dto);

		return n > 0 ? true : false;
	}

	@Override
	public boolean NoChatEnd(NoChatDTO dto) {
		
		int n = sqlSession.update(ns + "NoChatEnd", dto);

		return n > 0 ? true : false;
	}
	
	
	

}
