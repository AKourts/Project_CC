We are going to use Alpine as our base image. When creating a Docker container, we want our container to be as lightweight as possible. Alpine is a lighter Linux distribution compared to  the Ubuntu Docker image. Using the lighter image provides faster build times, because we are only building the dependencies our application needs. Files created:

- [Dockerfile](https://github.com/AKourts/Project_CC/tree/master/Dockerfile)
- [service.py](https://github.com/AKourts/Project_CC/tree/master/contenedores/service.py) 

In the Dockerfile can be seen all the details. Also, a very simple service in python was created to check that the web app works returning just "OK".

Here are the necessary commands after the creation of the Dockerfile and the service file.

Connect to azure cli:
```
az login
```

Create a user:
```
az webapp deployment user set --user-name akourts --password avalidpassword
```

Create a new group in our area of working:
```
az group create --name dockerGroup --location "West Europe"
```

Create a plan:
```
az appservice plan create --name sandrakourPlan --resource-group dockerGroup --sku S1 –is-linux
```

Create the web app:
```
az webapp create --resource-group dockerGroup --plan sandrakourPlan --name appservicesandra --deployment-container-image-name akourts/project_cc
```

Open the port 5000:
```
az webapp config appsettings set -g dockerGroup -n appservicesandra --settings PORT=5000
```
Here is the desirable result:

(https://github.com/AKourts/Project_CC/tree/master/contenedores/ok.png)


