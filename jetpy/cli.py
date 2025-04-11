import sys
from jetpy.runner import run_file

def main():
    if len(sys.argv) < 2:
        print("Uso: jetc run archivo.jetpy")
        return

    command = sys.argv[1]
    if command == "run" and len(sys.argv) == 3:
        run_file(sys.argv[2])
    else:
        print("Comando no reconocido. Usa: jetc run archivo.jetpy")
