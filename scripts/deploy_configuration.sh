HOMEASSISTANT_CONF_FOLDER="/home/homeassistant/.homeassistant/"

WORKSPACE_FOLDER=$PWD

echo "Info - Stopping server"
sudo systemctl stop home-assistant@homeassistant

echo "Info- Copying files" 
echo "Current workspace folder:" $WORKSPACE_FOLDER
cd "$WORKSPACE_FOLDER""/homeassistant_configuration/"
sudo cp -Rf * $HOMEASSISTANT_CONF_FOLDER

echo "Info - Starting server"
sudo systemctl start home-assistant@homeassistant