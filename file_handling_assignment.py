# File Creation
def create_file():
    try:
        with open("my_file.txt", "w") as file:
            file.write("Line 1: This is a text line.\n")
            file.write("Line 2: 12345\n")
            file.write("Line 3: Another line with some numbers: 3.14, 42, 100\n")
        print("File 'my_file.txt' created successfully.")
    except IOError as e:
        print(f"Error creating file: {e}")

# File Reading and Display
def read_file():
    try:
        with open("my_file.txt", "r") as file:
            content = file.read()
            print("Contents of 'my_file.txt':")
            print(content)
    except FileNotFoundError:
        print("File 'my_file.txt' not found.")
    except PermissionError:
        print("Permission denied to read file.")

# File Appending
def append_to_file():
    try:
        with open("my_file.txt", "a") as file:
            file.write("Line 4: Appending more text to the file.\n")
            file.write("Line 5: 98765\n")
            file.write("Line 6: Final line added.\n")
        print("Additional content appended to 'my_file.txt'.")
    except IOError as e:
        print(f"Error appending to file: {e}")

# Error Handling
try:
    create_file()
    read_file()
    append_to_file()
except Exception as e:
    print(f"An error occurred: {e}")
finally:
    print("Execution completed.")
