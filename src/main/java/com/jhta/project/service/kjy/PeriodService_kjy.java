package com.jhta.project.service.kjy;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.mybatis.mapper.kjy.PeriodMapperkjy;

@Service
public class PeriodService_kjy {
	@Autowired private PeriodMapperkjy mapper;
	public String list(Date day) {
		return mapper.list(day);
	}
}
