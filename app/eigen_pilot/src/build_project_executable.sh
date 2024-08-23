#!/bin/bash

PROJECT_DIR=$(dirname $(pwd))
BUILD_DIR="${PROJECT_DIR}/build"

#change name to required executable
EXECUTABLE="${PROJECT_DIR}/bin/eigen_demo_cmake"

mkdir -p $BUILD_DIR

cd $BUILD_DIR

cmake ../src

make

cd ${PROJECT_DIR}/src

rm -rf $BUILD_DIR

echo -e "\nBuild completed and build directory deleted.\n\n"

# Step 5: Ask if the executable should be run
read -p "Do you want to run the executable? (y/n): " RUN_EXEC

if [[ $RUN_EXEC == "y" || $RUN_EXEC == "Y" ]]; then
    # Check if the executable exists
    if [[ -f $EXECUTABLE ]]; then
        echo -e "\n\nRunning the executable...\n"
        $EXECUTABLE
    else
        echo -e "\nExecutable not found. Ensure it was built correctly.\n"
    fi
else
    echo -e "\nSkipping execution of the executable.\n"
fi