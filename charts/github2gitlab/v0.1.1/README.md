# 同步程式碼從GitHub至GitLab

## 延伸式(token與ssh clone)
由於iiidevops目前禁止使用ssh clone因此此方案暫時封存
因此僅可使用Token方案

## 測試案例
* 精簡部屬測試
./test/test-iso3-github2gitlab-case1.yaml
* 精簡部屬測試-測試客製化cron值
./test/test-iso3-github2gitlab-case2.yaml
* 精簡部屬測試-測試僅輸入每分鐘數值(正常值60內)
./test/test-iso3-github2gitlab-case3.yaml
* 精簡部屬測試-測試僅輸入每分鐘數值(非正常值60以上)
./test/test-iso3-github2gitlab-case4.yaml

## 測試指令
helm3 lint ./charts/github2gitlab/0.1.0 -f ./test/test-iso3-github2gitlab-case1.yaml
helm3 lint ./charts/github2gitlab/0.1.0 -f ./test/test-iso3-github2gitlab-case2.yaml
helm3 lint ./charts/github2gitlab/0.1.0 -f ./test/test-iso3-github2gitlab-case3.yaml
helm3 lint ./charts/github2gitlab/0.1.0 -f ./test/test-iso3-github2gitlab-case4.yaml
helm3 install --dry-run --debug ./charts/github2gitlab/0.1.0 -f ./test/test-iso3-github2gitlab.yaml  --generate-name
helm3 upgrade --install --debug test20210818 ./charts/github2gitlab/0.1.0 -f ./test/test-iso3-github2gitlab.yaml

## Release版本說明
* v0.1.0：同步為每5分鐘一次，主要針對kubernetes v1.9以前
* v0.1.1: 同步為每小時一次，針對kubernetes v1.9以後可使用，增加可變動每X分鐘參數，與CronJob表達式

## Reference
* [configure-pod-configmap](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/)
* [define-environment-variable-container](https://kubernetes.io/docs/tasks/inject-data-application/define-environment-variable-container/)
* [guru](https://crontab.guru/#*/5_*_*_*_*)
* [cron-jobs](https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/)
* [configmap](https://kubernetes.io/docs/concepts/configuration/configmap/)
* [values](https://helm.sh/docs/chart_best_practices/values/)
* [helm-lint-info-chart-yaml-icon-is-recommended](https://stackoverflow.com/questions/51557965/helm-lint-info-chart-yaml-icon-is-recommended)
* [no-matches-for-kind-cronjob-in-version-batch-v1](https://stackoverflow.com/questions/67520866/no-matches-for-kind-cronjob-in-version-batch-v1)
* [functions_and_pipelines](https://helm.sh/docs/chart_template_guide/functions_and_pipelines/)
* [helm-chart-fails-with-nil-pointer-evaluating-interface-when-trying-to-evalu](https://stackoverflow.com/questions/61154736/helm-chart-fails-with-nil-pointer-evaluating-interface-when-trying-to-evalu)
* [go - 尝试评估丢失的嵌套键时，Helm 图表因 "nil pointer evaluating interface {}"失败](https://www.coder.work/article/7186841)
* [helm_verify](https://helm.sh/docs/helm/helm_verify/)
* [can-we-use-or-operator-in-helm-yaml-files](https://stackoverflow.com/questions/49789867/can-we-use-or-operator-in-helm-yaml-files)
* [function_list](https://helm.sh/docs/chart_template_guide/function_list/)