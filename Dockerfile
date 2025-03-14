# Use an official GCC image to build the application
FROM gcc:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the C source file into the container
COPY src/hello.c /app/hello.c

# Compile the C code to create an executable
RUN gcc -o hello hello.c

# Run the executable when the container starts
CMD ["./hello"]

