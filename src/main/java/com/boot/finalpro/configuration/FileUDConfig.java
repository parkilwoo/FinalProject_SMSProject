package com.boot.finalpro.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.boot.finalpro.util.DownloadView;



@Configuration
public class FileUDConfig {

	@Bean(name = "downloadView")
	public DownloadView downloadView() {
		return new DownloadView();
	}
}
