package com.jhta.mybatis.mapper.hjy;

import com.jhta.project.vo.hjy.AccommodationsVo;

public interface Accommodations_tempMapper_hjy {
	public int seq();
	public AccommodationsVo find(int aid);
	public int insert(AccommodationsVo vo);
	public int delete(int aid);
}
