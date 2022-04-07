This workshop requires two things: a Python environment with `ezomero` installed and access to an OMERO server. There are a few options to get that done:

## Option 1 
**If you don't have either and you can install Docker on your machine** (or already have it installed): clone this repository and run the following lines in a command line (terminal, powershell, etc) on the repository directory:
```
docker-compose up -d
docker-compose logs jupyter
```
This will start an OMERO server and a jupyterlab server locally. The second command should give you a few lines like
```
omero_for_developers-jupyter-1  | [I 2022-04-05 14:59:59.849 ServerApp] Jupyter Server 1.16.0 is running at:
omero_for_developers-jupyter-1  | [I 2022-04-05 14:59:59.849 ServerApp] http://edde23c1c1a9:8888/lab?token=abf737e12c41615faaccb6b74c40f86f5158ff0cc6fbc42a
omero_for_developers-jupyter-1  | [I 2022-04-05 14:59:59.849 ServerApp]  or http://127.0.0.1:8888/lab?token=abf737e12c41615faaccb6b74c40f86f5158ff0cc6fbc42a
```
towards the end. Copy the last address it gives you (it will be different from mine!) into your browser and launch a new "workshop" notebook - you should now have access to an environment with `ezomero`, and your OMERO server will be accessible at the `host.docker.internal` from it. 

You can also access the OMERO.web interface for your local OMERO server at `localhost:5080` from your browser. User `root`, password `omero`. If you want to import some data into it, you can use [omero-insight](https://www.openmicroscopy.org/omero/downloads/) connecting to `localhost:6064` to connect to it and put some data there (you should try to do that in advance!).

## Option 2:
**If you already have an OMERO server**: in that case, you just need a Python environment with `ezomero` (and `jupyter` if you want to use notebooks). I recommend using `conda` - with `conda` installed, you can do the following:
```
conda create -n ezomero python=3.6
conda activate ezomero
conda install -c ome zeroc-ice36-python
pip install ezomero jupyterlab
jupyter lab
```
That would get you to the same place as option 1 - you should have a jupyterlab server running locally that you can connect to with the address it provides. Your OMERO server should be accessible via its usual address.

## Option 3:
**If you already have an ezomero Python environment, but no OMERO server**: first off, wow. Thank you for having ezomero installed even without an OMERO server to use it on :) I'd recommend using the same steps as option 1 - you will get a *new* Python environment with ezomero, but it's easier than trying a separate set of steps to run an OMERO server locally. Your OMERO server should be accessible from your Python environment at `localhost`.

## Option 4: 
**If you don't have either and you CANNOT install Docker on your machine**: this is the most problematic case. You can use option 2 to do the Python installation part, but you WILL need an OMERO server to access. You will either need to manually install an OMERO server locally, or ask nicely for someone with an OMERO server for credentials to test stuff. If you find yourself completely lost without a server to use, feel free to reach out to me and we can see what we can do about it.