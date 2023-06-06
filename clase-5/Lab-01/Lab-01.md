# Archivo pod.yml

<p align="center"><img src="../../assets/clase-5-lab-01-img1.PNG" width="600"/></p>

# Pod creado

```
kubectl create -f pod.yml
```

<p align="center"><img src="../../assets/clase-5-lab-01-img2.PNG" width="600"/></p>

# Informacion detallada del Pod

```
kubectl describe pod pod-k8s-test-web
```

<p align="center"><img src="../../assets/clase-5-lab-01-img3.PNG" width="600"/></p>

# ls del archivo index.html dentro del contenedor

```
kubectl exec -it pod-k8s-test-web --sh
ls htdocs/
```

<p align="center"><img src="../../assets/clase-5-lab-01-img4.PNG" width="600"/></p>

# Port forward y logs de acceso al pod

```
kubectl port-forward --address 0.0.0.0 pod/pod-k8s-test-web 8080:80
```

<p align="center"><img src="../../assets/clase-5-lab-01-img5.PNG" width="600"/></p>

<p align="center"><img src="../../assets/clase-5-lab-01-img6.PNG" width="600"/></p>