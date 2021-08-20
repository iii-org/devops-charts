# 同步程式碼從GitHub至GitLab

## Release版本說明
* v0.1.0：同步為每5分鐘一次，主要針對kubernetes v1.9以前
* v0.1.1: 同步為每小時一次，針對kubernetes v1.9以後可使用，增加可變動每X分鐘參數，與CronJob表達式