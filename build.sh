docker build -t soichih/ui-conn .
if [ $? -eq 0 ];
then
    echo "publishing"
    docker push soichih/ui-conn
fi
