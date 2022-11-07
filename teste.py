i = int(input("Insira o valor de i: "))
j = int(input("Insira o valor de j: "))

def pergunta():
  i = int(input("Insira o valor de i: "))
  j = int(input("Insira o valor de j: "))

while( i > j):
  print("erro! Insira novamente os valores.")
  pergunta()
else:
  while ( i <= j):
    print(i, " ", j)
    
    i += 1
    j -= 1
  #break
  
