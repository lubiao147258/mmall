package com.mmall.service;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author:鲁标
 * @ctrateTime:2018年03月29日 20:39:00
 */
public interface IFileService {

    String upload(MultipartFile file, String path);
}
