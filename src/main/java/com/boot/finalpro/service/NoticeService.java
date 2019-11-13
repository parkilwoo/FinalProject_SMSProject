package com.boot.finalpro.service;

import java.util.List;
import java.util.Map;

import com.boot.finalpro.model.NoticeDTO;
import com.boot.finalpro.model.NoticeSubDTO;
import com.boot.finalpro.util.SearchUtillDto;


public interface NoticeService {

	public int totalCount(SearchUtillDto dto);
	
	public List<NoticeDTO> getNoticeList(SearchUtillDto dto);
	
	public Map<String, Object> noticeDetail(int seq);
	
	public void updateDownCount(int file_seq);
	
	public NoticeSubDTO noticeFileDetail(int file_seq);
	
}
