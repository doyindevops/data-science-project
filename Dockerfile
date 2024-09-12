FROM jupyter/base-notebook:latest

# Copy the requirements file into the container
COPY requirements.txt /tmp/

# Install the Python dependencies
RUN pip install -r /tmp/requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]

