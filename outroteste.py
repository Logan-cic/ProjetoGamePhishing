temp = 0
for j in range(0, 5, 1):
    for i in range(0,3,1):
        x = int(input("Insira a nota 1: "))
        y = int(input("Insira as nota 2: "))
        z = int(input("Insira as nota 3: "))
        temp = (x + y + z) / 3
        print(f"A media das notas é : {temp:.2f}\n")
        