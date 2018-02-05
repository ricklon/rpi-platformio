FROM resin/rpi-raspbian:latest 

# Enable command line Arduino via platformio
RUN pip install platformio
# Enable pic32 compiler execution
RUN ln -s /lib/arm-linux-gnueabihf/ld-linux.so.3 /lib/ld-linux.so.3
RUN pio platform install microchippic32

# Enable and compile a default program
# WORKDIR /autonomous/arduino/MOTTOServoDataSampleDelay
# RUN pio lib install 944
# RUN pio run
# RUN pio device list 

