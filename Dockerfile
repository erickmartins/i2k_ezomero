FROM jupyter/base-notebook:lab-3.3.2

# Install Jupyterlab

USER root
SHELL [ "/bin/bash", "--login", "-c" ]
RUN conda init bash
RUN conda create -n workshop python=3.7
SHELL ["conda", "run", "-n", "workshop", "/bin/bash", "-c"]
RUN pip install --upgrade jupyterlab jupyterlab-git
RUN jupyter lab build
COPY requirements_container.txt .
RUN pip install -r requirements_container.txt
RUN echo "conda activate workshop" >> ~/.bashrc
RUN conda install ipykernel
RUN python -m ipykernel install --user --name workshop

EXPOSE 8888
ENTRYPOINT ["jupyter", "lab", "--allow-root"]