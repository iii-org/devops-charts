## 
基於0.5.2基礎重新添加資源使用的參數

```
helm3 get values -n v0705-asp-net-example1 v0705-asp-net-example1-master-serv --kubeconfig ~/config-dev3 > dev3-v0705-asp-net-example1.yaml
helm3 install v0705-asp-net-example1-master-serv1 ./charts/web/0.5.3 --kubeconfig ~/config-dev3 -f ./test/dev3-v0705-asp-net-example1.yaml --dry-run --debug
```
