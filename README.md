# jenkins-pipeline-sosmed
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

### Prerequisite:
- Jenkins should be installed
- SSH setup between Jenkins and the docker remote server (generate ssh-keygen as jenkins user than add public key to authorized key in docker remote host)
- Docker should be installed on the server where you need to run a container and the user should be added to the docker group (sudo usermod -aG docker jenkins)
- Setup SSH between Github and Jenkins if you want to use the SSH url instead of https url of your git repo
- Docker Pipeline Plugin
- Setup Jenkins Credential for dockerhub account

# Referensi
Use Docker Server As Build Slave Jenkins: https://devopscube.com/docker-containers-as-build-slaves-jenkins/ <br>
<b> Enable Docker Remote API : </b> https://scriptcrunch.com/enable-docker-remote-api/ <br>
<b> Jenkins pipeline with docker: </b> https://devops4solutions.com/publish-docker-image-to-dockerhub-using-jenkins-pipeline/
