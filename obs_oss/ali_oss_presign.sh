# 1. 预签名上传的文档
https://help.aliyun.com/zh/oss/user-guide/upload-files-using-presigned-urls?spm=a2c4g.11186623.help-menu-31815.d_0_3_1_5.c984a71eV102hE&scm=20140722.H_2579659._.OR_help-T_cn~zh-V_1

# 2. 先是微服务提供预签名的URL
# 然后使用put方式, 将指定的文件put到对应的OSS地址
curl -X PUT -T 1.png "http://bucket.oss-cn-beijing.aliyuncs.com/1.png?Expires=&OSSAccessKeyId=&Signature="

