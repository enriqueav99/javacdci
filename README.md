# Estudio de despligue de aplicaciones en Kubernetes
![Escudo de la UPSA](./upsa-logo.png) 
![Logo de Inditex](https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Inditex_logo_black.svg/799px-Inditex_logo_black.svg.png)

## Hecho por Enrique Andrés Villar 
## Dirigido por Roberto Berjón Gallinas (UPSA) y Sergio Sáez Salas (Inditex)

### Tecnolgias utilizadas:
- Docker 
- Kubernetes
- Git
- GitHub Actions
- Java 11 (Maven) y Quarkus
- MongoDB
- Helm3
- Operadores
- Prometheus y Grafana

### Resumen
En los últimos años Kubernetes ha ganado popularidad dentro de la infraestructura cloud como sistema de orquestación de contenedores, gracias a la automatización de procesos, la auto escalabilidad de contenedores y gestión de aplicaciones. A lo largo de este trabajo, veremos diferentes maneras de despliegue (kubectl, Helm y operadores) con una filosofía GitOps.
GitOps se basa en que toda la infraestructura necesaria para una aplicación tiene que estar en un repositorio de código fuente, como git, y que cualquier cambio en el repositorio se vea reflejado en la infraestructura desplegada, esto es posible gracias a herramientas de CI/CD, las cuales permiten automatizar los cambios una vez se suban al repositorio y, normalmente, pasan una validación (pull request).
Dentro de la filosofía GitOps tenemos dos enfoques: push (se avisa al clúster que hay cambios) o pull (el clúster “observa” si ha habido cambios en el repositorio).
Además también se desarrollará una aplicación web en Java, la cual usa el framework de desarrollo web Quarkus y se conecta a una MongoDB para la persistencia de los datos. El código de nuestra aplicación podrá encontrarse en Github, y utilizaremos Github Actions como herramienta de CI/CD ya que son muy potentes, sencillas de utilizar y tienen una gran comunidad por detrás que no para de desarrollar nuevas Actions.