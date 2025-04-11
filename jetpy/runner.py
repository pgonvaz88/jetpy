def run_file(filename):
    print(f"Ejecutando {filename} (versión interpretada de JetPy)...")
    with open(filename, "r") as f:
        code = f.read()
        print("Contenido:")
        print(code)
