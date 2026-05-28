## Домашнее задание к занятию «Вычислительные мощности. Балансировщики нагрузки»
### `Михеев Алексей`

### Подготовка к выполнению задания
```
  1. Домашнее задание состоит из обязательной части, которую нужно выполнить на провайдере Yandex Cloud, и дополнительной части в AWS (выполняется по желанию).
  2. Все домашние задания в блоке 15 связаны друг с другом и в конце представляют пример законченной инфраструктуры.
  3. Все задания нужно выполнить с помощью Terraform. Результатом выполненного домашнего задания будет код в репозитории.
  4. Перед началом работы настройте доступ к облачным ресурсам из Terraform, используя материалы прошлых лекций и домашних заданий.
```
### Задание 1. Yandex Cloud

Что нужно сделать
```
  1. Создать бакет Object Storage и разместить в нём файл с картинкой:
      - Создать бакет в Object Storage с произвольным именем (например, имя_студента_дата).
      - Положить в бакет файл с картинкой.
      - Сделать файл доступным из интернета.
  2. Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета:
      - Создать Instance Group с тремя ВМ и шаблоном LAMP. Для LAMP рекомендуется использовать image_id = fd827b91d99psvq5fjit.
      - Для создания стартовой веб-страницы рекомендуется использовать раздел user_data в meta_data.
      - Разместить в стартовой веб-странице шаблонной ВМ ссылку на картинку из бакета.
      - Настроить проверку состояния ВМ.
  3. Подключить группу к сетевому балансировщику:
      - Создать сетевой балансировщик.
      - Проверить работоспособность, удалив одну или несколько ВМ.
```



- - - - - 

Решение

```
  1. Инициализация Terraform
  terraform init

  2. Обновление провайдеров
  terraform init -upgrade

  3. Проверка конфигурации
  terraform validate

  4. Просмотр плана изменений
  terraform plan

  5. Применение конфигурации
  terraform apply

  6.Создание инфраструктуры:
    VPC сеть
    подсеть
    Object Storage (bucket + файл)
    Instance Group (3 ВМ)
    Network Load Balancer

  7. Проверка результата
  terraform output
    image_url = "https://storage.yandexcloud.net/miheevaa/image.jpg"
    nlb_ip = "158.160.175.234"
  Показывает выходные значения - IP балансировщика, URL картинки

  8. Проверка доступности сайта
  curl http://158.160.175.234

  9. Удаление инфраструктуры
  terraform destroy

```

![1](https://github.com/Alm798/clopro_15.2/blob/main/img/1.png)

![2](https://github.com/Alm798/clopro_15.2/blob/main/img/2.png)

![3](https://github.com/Alm798/clopro_15.2/blob/main/img/3.png)

![4](https://github.com/Alm798/clopro_15.2/blob/main/img/4.png)

![5](https://github.com/Alm798/clopro_15.2/blob/main/img/5.png)

![6](https://github.com/Alm798/clopro_15.2/blob/main/img/6.png)

![7](https://github.com/Alm798/clopro_15.2/blob/main/img/7.png)

![8](https://github.com/Alm798/clopro_15.2/blob/main/img/8.png)

![9](https://github.com/Alm798/clopro_15.2/blob/main/img/9.png)

![13](https://github.com/Alm798/clopro_15.2/blob/main/img/13.png)

![11](https://github.com/Alm798/clopro_15.2/blob/main/img/11.png)

![12](https://github.com/Alm798/clopro_15.2/blob/main/img/12.png)



- - - - - 
