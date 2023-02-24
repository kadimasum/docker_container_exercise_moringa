1. Install python package
2. Install a virtual environment:
sudo pip3 install virtualenv
3. Activate the virtual environment
source venv/bin/activate
4. Start up the server and check for missing modules
python3 manage.py runserver
5. Install Django packages
pip3 install django
6. Create a requirements.txt file which will store info about libraries,modules and packages used to develop the project. use the below command to capture the dependencies and store into the created file.
pip3 freeze > requirements.txt
7. Create a Dockerfile with commands.
8. Build an image
sudo docker build . -t <image_name>
9. Run the image
sudo docker run <image_name>
