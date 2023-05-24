```
docker run -d -p 27017:27017 --name m1 mongo
docker ps
```
<p align="center"><img src="../../assets/clase-4-lab-02-img1.PNG" width="600"/></p>

```
docker exec -it m1 /bin/bash
mongosh
```
<p align="center"><img src="../../assets/clase-4-lab-02-img2.PNG" width="600"/></p>

```
python populate.py
```
<p align="center"><img src="../../assets/clase-4-lab-02-img3.PNG" width="600"/></p>

```
python find.py
```
<p align="center"><img src="../../assets/clase-4-lab-02-img4.PNG" width="600"/></p>

```
docker stop m1
docker rm m1
```
<p align="center"><img src="../../assets/clase-4-lab-02-img5.PNG" width="600"/></p>
