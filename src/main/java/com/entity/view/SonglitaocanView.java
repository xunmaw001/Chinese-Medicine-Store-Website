package com.entity.view;

import com.entity.SonglitaocanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 送礼套餐
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-19 10:24:21
 */
@TableName("songlitaocan")
public class SonglitaocanView  extends SonglitaocanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public SonglitaocanView(){
	}
 
 	public SonglitaocanView(SonglitaocanEntity songlitaocanEntity){
 	try {
			BeanUtils.copyProperties(this, songlitaocanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
