```
docker run -d --name bootcamp-web -v /root/web:/usr/share/nginx/html -p 9999:80 nginx:latest
```
<p align="center"><img src="../../assets/clase-4-lab-03-img1.PNG" width="600"/></p>

```
docker exec -it bootcamp-web /bin/bash
ls
ls /usr/share/nginx/html
```
<p align="center"><img src="../../assets/clase-4-lab-03-img2.PNG" width="600"/></p>

<p align="center"><img src="../../assets/clase-4-lab-03-img3.PNG" width="600"/></p>
