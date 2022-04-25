# usage example: time python3 powerplant.py /input/grid-100-180 /output/grid-100-180.o

import sys # sys.argv

from ortools.linear_solver import pywraplp

def main():

  # read command
  if len(sys.argv) != 3:
    print("usage: prog [inputpath] [outputpath]")
    return

  # define path
  inputPath = sys.argv[1]
  outputPath = sys.argv[2]

  # Create the mip solver with the SCIP backend.
  solver = pywraplp.Solver.CreateSolver('SCIP')

  # read input file
  inputFile = open(inputPath, "r")

  v = [] # list of node
  e = [] # list of edge

  n = int(inputFile.readline())
  for i in range(n):
    v.append(solver.BoolVar(str(i))) # solution must be 0 or 1
    e.append([])

  m = int(inputFile.readline())
  for line in inputFile:
    a,b = line.strip().split()
    a = int(a)
    b = int(b)
    e[a].append(b)
    e[b].append(a)
  inputFile.close()

  for i in range(n):
    x = solver.IntVar(1, n, 'x'+str(i))
    ct = solver.Constraint(0, 0, 'ct'+str(m))
    ct.SetCoefficient(x, -1)
    ct.SetCoefficient(v[i], 1)
    for nb in e[i]:
      ct.SetCoefficient(v[nb], 1)
    m -= 1

  # obj: min(sum v[i])
  objective = solver.Objective()
  for i in range(n):
    objective.SetCoefficient(v[i], 1)
  objective.SetMinimization()

  # execute
  solver.Solve()

  # solution
  k = str(int(objective.Value()))
  s = ''
  for i in range(n):
    s += str(int(v[i].solution_value())) # 0 or 1 for each node
  # print(k)
  # print(s)

  # write output file
  outputFile = open(outputPath, "w")
  outputFile.write(k+':'+s)
  outputFile.close()

if __name__ == '__main__':
  main()