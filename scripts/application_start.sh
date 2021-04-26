#!/bin/bash
sudo chmod -R 777 /home/ec2-user/express-app
#Navigate into working directory where we have github files

#add node and npm to the path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"] && \. "$NVM_DIR/nvm.sh" # loads nvm
[ -s "$NVM_DIR/bash_completion"] && \. "$NVM_DIR/bash_completion" # loads nvm bash_completion   

# install node modules
npm install

#start our node app in the background
node app.js > app.out.log 2> app.error.log < /dev/null &
