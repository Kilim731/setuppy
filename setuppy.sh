#!/bin/bash

echo "Creating a basic file structure for python"

while true; do
  echo "Please input the name of your project:"
  read -p "-> " name

  if [ -d ./$name ]; then
    echo "A project with this name already exists in this courrent directory"
  elif [ -n $name ]; then
    break
  fi
done

echo "creating directories"
mkdir -p ./$name/src/$name ./$name/tests
echo "All directories have been created"
read -p "Press enter to continue"

echo "Creating files"
touch ./$name/src/$name/main.py ./$name/src/$name/__init__.py ./$name/src/$name/.config.py
touch ./$name/tests/test_core.py ./$name/tests/test_helpers.py
touch ./$name/README.md ./$name/LICENSE ./$name/.gitignore

echo "Files were created"
