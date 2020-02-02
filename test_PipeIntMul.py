from caseparser import caseparser
import random
random.seed(0xdeadbeef)

input_msg_format = {'A'  : 32,
                    'B'  : 32,
                    '_FDEF'   : ['A','B']}
resp_msg_format = {'P'  : 64,
                   '_FDEF': ['P']}

reqmem = './request_PipeIntMul.dat'
respmem = './response_PipeIntMul.dat'

def item_builder(inputA,inputB):
  if len(inputA) == len(inputB):
    itemN = len(inputA)
    itemlist = []
    for i in range(itemN):
      A = inputA[i]%(2**32)
      B = inputB[i]%(2**32)
      P = A * B
      P = P%(2**64)
      item  = {'req':[A,B],'resp':[P]}
      itemlist.append(item)
    return itemlist
  else:
    print('[ERROR!]:case item number of input ports do not match!')
    raise ValueError
  

  
def Mul_test_basic():
  return(item_builder([255],[1]))

def Mul_test_pos_pos():
  inputA = [100,14 ,22 ,1  ,6  ,89 ,72 ]
  inputB = [264,357,201,0  ,245,11 ,456]
  return(item_builder(inputA,inputB))

def Mul_test_rand_rand():
  inputA = []
  inputB = []
  for i in range(200):
    inputA.append(random.randint(0,2**32-1))
    inputB.append(random.randint(0,2**32-1))
  return(item_builder(inputA,inputB))

  
# test case list
caselist_RTL = [
  Mul_test_basic,
  Mul_test_pos_pos,
  Mul_test_rand_rand
]

caseparser(caselist_RTL,input_msg_format,resp_msg_format,reqmem,respmem)