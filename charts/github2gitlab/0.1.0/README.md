# 同步程式碼從GitHub至GitLab

## 延伸式(token與ssh clone)
由於iiidevops目前禁止使用ssh clone因此此方案暫時封存
因此僅可使用Token方案

## 測試指令
helm3 lint ./charts/github2gitlab/0.1.0 -f ./test/test-iso3-github2gitlab.yaml
helm3 install --dry-run --debug ./charts/github2gitlab/0.1.0 -f ./test/test-iso3-github2gitlab.yaml  --generate-name

## Reference
* [configure-pod-configmap](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/)
* [define-environment-variable-container](https://kubernetes.io/docs/tasks/inject-data-application/define-environment-variable-container/)
* [guru](https://crontab.guru/#*/5_*_*_*_*)
* [cron-jobs](https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/)
* [configmap](https://kubernetes.io/docs/concepts/configuration/configmap/)
* [values](https://helm.sh/docs/chart_best_practices/values/)
* [helm-lint-info-chart-yaml-icon-is-recommended](https://stackoverflow.com/questions/51557965/helm-lint-info-chart-yaml-icon-is-recommended)