package com.jhta.project.service.hjy;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.mybatis.mapper.hjy.Room_infoMapper_hjy;
import com.jhta.project.vo.hjy.Room_InfoVo;


@Service
public class Room_infoService_hjy {
	@Autowired Room_infoMapper_hjy mapper;
	public int insert(Room_InfoVo vo) {
		return mapper.insert(vo);
	};
}