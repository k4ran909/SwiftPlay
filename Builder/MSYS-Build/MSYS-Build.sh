export PATH="/mingw64/bin:$PATH"

# resource file
windres -o resources.o resources.rc

# compile src
g++ -o SwiftPlay SwiftPlay.cpp resources.o -mwindows -std=c++11 -static

# success yes/no
if [ $? -eq 0 ]; then
    echo "Compilation successful: SwiftPlay.exe created"
else
    echo "Compilation failed."
fi