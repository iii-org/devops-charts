## 
基於0.5.2基礎重新添加資源使用的參數
基於0.5.3基礎添加選擇性的環境變數(secret與configmap)
基於0.5.4基礎添加儲存空間(但是遇到Rancher APP嚴重BUG)
```bash
Failed to install app t1118-web-vol-enable-master-serv. Error: error while running post render on files: error while running command /kustomize.sh. error output: Error: <nil> is expected to be either a string or a []interface{} : exit status 1
```

```
helm3 get values -n v0705-asp-net-example1 v0705-asp-net-example1-master-serv --kubeconfig ~/config-dev3 > dev3-v0705-asp-net-example1.yaml
helm3 install v0705-asp-net-example1-master-serv1 ./charts/web/0.5.3 --kubeconfig ~/config-dev3 -f ./test/dev3-v0705-asp-net-example1.yaml --dry-run --debug
```

## Reference
* [How to mark secret as optional in kubernetes?](https://stackoverflow.com/questions/48208705/how-to-mark-secret-as-optional-in-kubernetes)
