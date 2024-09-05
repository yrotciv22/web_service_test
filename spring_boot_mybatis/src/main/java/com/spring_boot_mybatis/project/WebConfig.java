package com.spring_boot_mybatis.project;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// 프로젝트 외부 경로 이미지 맵핑 설정
		// 매핑 이름 : prd_images
		registry.addResourceHandler("/prd_images/**")
		//.addResourceLocations("file:///C:/springWorkspace/product_images/");
		.addResourceLocations("file:///usr/local/project/product_images/"); // 서버 경로
		
		// upload 폴더의 이미지 출력하기 위해 맵핑 설정 // 오디오 추가
		registry.addResourceHandler("/images/**","/audio/**")
		//.addResourceLocations("file:///C:/springWorkspace/upload/");
		.addResourceLocations("file:///usr/local/project/upload/"); // 서버 경로
		
		
	}
}
