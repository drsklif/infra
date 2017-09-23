# infra
infrastructure repository

Instance creation command:
```
gcloud compute instances create --boot-disk-size=10GB --image=ubuntu-1604-xenial-v20170815a --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure --zone=europe-west1-b --metadata-from-file startup-script=startup.sh reddit-app
```

Сборка пакером и ansible образа приложения:
```
packer build -var 'proj_id=infra-179714' -var 'source_image=ubuntu-1604-xenial-v20170919' app.json
```

Сборка пакером и ansible образа для БД:
```
packer build -var 'proj_id=infra-179714' -var 'source_image=ubuntu-1604-xenial-v20170919' db.json
```

Смена проекта на новый:
```
gcloud config set project infra-179714
```

Создание экземпляра приложения:
```
gcloud compute instances create --boot-disk-size=10GB --image=reddit-app-base-1506092842 --image-project=infra-179714 --machine-type=g1-small --tags ssh --restart-on-failure --zone=europe-west1-b app
```

Создание экземпляра БД:
```
gcloud compute instances create --boot-disk-size=10GB --image=reddit-db-base-1506092557 --image-project=infra-179714 --machine-type=g1-small --tags ssh --restart-on-failure --zone=europe-west1-b db
```
