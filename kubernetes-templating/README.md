
Самостоятельное задание cert-manager:

Дополнительно установили ClusterIssuer

Работа с ChartMuseum:

https://chartmuseum.34.66.54.91.nip.io

Задание со ⭐
Установить параметр "DISABLE_API false" в values.yaml
Установить плагин helm-push https://github.com/chartmuseum/helm-push
Добавить репозиторий helm repo add chartmuseum http://localhost:8080
Експортировать чарт helm push mychart/ chartmuseum
Установить чарт helm install chartmuseum/mychart --name mychart

Самостоятельное задание harbor:

Harbor запущен и работает https://harbor.34.66.54.91.sslip.io