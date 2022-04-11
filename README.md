# sosial-media
Demo Jenkinsfile pipeline Build PHP Image docker<br>

Adapun tahapan (CI) continuous integration sebagai berikut:<br>
1.	Jenkins CI server akan melakukan cloning code repository ketika ada perubahan yang terjadi trigger nya melalui Github push event webhook. <br>
2.	Setelah itu Jenkins akan melakukan tahapan Build image docker. <br>
3.	Setelah melakukan build image Jenkins akan melakukan testing dengan cara menjalankan docker image ke dalam test server remote host. <br>
4.	Kemudian image docker tersebut akan dipush kedalam registry docker hub. <br>

# Notes
Disini saya menggunakan versi: <br>
- Docker version 20.10.14, build a224086
- Jenkins 2.332.1 with Docker plugin

# Referensi
Use Docker Server As Build Slave Jenkins: https://devopscube.com/docker-containers-as-build-slaves-jenkins/ <br>
Enable Docker Remote API : https://scriptcrunch.com/enable-docker-remote-api/
