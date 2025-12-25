#!/bin/sh

echo "OS: $(uname -s)" > specs.txt
echo "OS Version: $(uname -r)" >> specs.txt
echo "Architecture: $(uname -m)" >> specs.txt

if command -v lscpu >/dev/null 2>&1; then
  echo "CPU: $(lscpu | grep 'Model name' | cut -d ':' -f2)" >> specs.txt
else
  echo "CPU: $(sysctl -n machdep.cpu.brand_string)" >> specs.txt
fi

if command -v free >/dev/null 2>&1; then
  echo "RAM: $(free -h | awk '/Mem:/ {print $2}')" >> specs.txt
else
  echo "RAM: $(sysctl -n hw.memsize)" >> specs.txt
fi

if command -v lspci >/dev/null 2>&1; then
  echo "GPU: $(lspci | grep -i vga)" >> specs.txt
else
  echo "GPU: $(system_profiler SPDisplaysDataType | grep 'Chipset Model')" >> specs.txt
fi
