# Archivo deploy.yml

<p align="center"><img src="../../assets/clase-5-lab-3-img1.PNG" /></p>

# Deployment creado en NameSpace lab-3

```
kubectl create ns lab-03
kubectl create -f deploy.yml -n lab-03
kubectl get pod,rs,deploy -n lab-03 -o wide
```

<p align="center"><img src="../../assets/clase-5-lab-3-img2.PNG" /></p>

# Informacion detallada del Deployment en NameSpace lab-03

```
kubectl describe deploy deployment-k8s-test-web -n lab-03
```

<p align="center"><img src="../../assets/clase-5-lab-3-img3.PNG" /></p>

# Deployment de la aplicacion por medio de port-forward puerto 8080 en NameSpace lab-03

```
kubectl port-forward --address 0.0.0.0 pod/deployment-k8s-test-web 8080:80 -n lab-03
```

<p align="center"><img src="../../assets/clase-5-lab-3-img4.PNG" /></p>

<p align="center"><img src="../../assets/clase-5-lab-3-img5.PNG" /></p>

# Logs de accesos en NameSpace lab-03

```
kubectl get pods -n lab-03
kubectl logs deployment-k8s-test-web-6fb79c475-6jmj4 -n lab-03
```
<p align="center"><img src="../../assets/clase-5-lab-3-img6.PNG" /></p>