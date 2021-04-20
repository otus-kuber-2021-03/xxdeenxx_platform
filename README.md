HW 1

1 Запустили Minikube
2 Создали Dockerfile для web-сервера, который работает на порту 8000
3 Написали манифест web-pod.yaml в котором использавали ранее собранный образ web-сервера
4 С помощью манифеста web-pod.yaml развернули приложение в Minikube
5 Добавили в наш манифест web-pod.yaml init контейнер

Задание со ⭐

6 Прчина по которой pod frontend находится в статусе Error, это отсутскве в манифесчите env

HW 2

1 Запустили kind
2 С помощью ReplicaSet развернули микросервис frontend
3 Задание: Руководствуясь материалами лекции опишите произошедшую
ситуацию, почему обновление ReplicaSet не повлекло обновление
запущенных pod?
Версия образа в подах не изменился,тк ReplicaSet не занимается обновление запущеных подов.
4 Новый микросервис paymentservice запустили через Deployment

Версия образа в подах не изменился,тк ReplicaSet не занимается обновление запущеных подов.

Задание со ⭐

5 Реализованы два сценария развертывания
  - Аналог blue-green
  - Reverse Rolling Update
6 Добавлен манифест node-exporter-daemonset.yaml для развертывания DaemonSet с Node Exporter
7 Что-бы развернуть Node Exporter на master нодах, надо использовать tolerations (this toleration is to have the daemonset runnable on master nodes)

HW 3

Работа с Service Account, Role, RoleBinding, ClusterRole, ClusterRoleBinding.

HW 4

1 Приминили конфигурации minio-statefulset.yaml, minio-headless-service.yaml.. Создался PV и PVC

Задание со ⭐

2 Поместили user/pass в кодировке base64 в конфигурацию minio-secret.yaml
3 Создали секрет
4 Изменили конфигурацию minio-statefulset.yaml для использования секрета
5 Тк секреты хранятся в незашифрованном виде необходимо:
  Включить шифрование для секретов 
  Настройть правила RBAC, которые ограничивают чтение и запись секрета