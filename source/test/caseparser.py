from bitvars import bitvector

def caseparser(caselist,input_msg_format,resp_msg_format,req_memfile,resp_memfile):
  # caselist = [case1func, case2func ...] 
  # casename = caselist[caseI].__name__
  # case stimulus = caselist[caseI]()[lineI]
  # msg_format = {'field1':width1,'field2':width2, ..., '_FDEF':['field1','field2',...]}
  inputlist = input_msg_format['_FDEF']
  outputlist = resp_msg_format['_FDEF']
  inputN = len(inputlist)
  outputN = len(outputlist)
  csaelist_str = []
  itemI = 0
  reqmem = open(req_memfile,mode = 'w')
  respmem = open(resp_memfile,mode = 'w')
  for case in caselist:
    casename = case.__name__
    csaelist_str.append(casename)
    itemlist = case()
    for i,item in enumerate(itemlist):
      print("@%s"%(hex(itemI)[2::]),end =  ' ',file = reqmem)
      print("@%s"%(hex(itemI)[2::]),end =  ' ',file = respmem) # print item number
      if i == len(itemlist) - 1:
        EOC = 1
      else:
        EOC = 0
      print('%d'%(EOC),end = '_',file = reqmem) 
      print('%d'%(EOC),end = '_',file = respmem) # print EOC flag
      
      # print request
      for portI,port_value in enumerate(item['req']):
        portwidth = input_msg_format[inputlist[portI]]
        bstr = bitvector(portwidth,port_value).tostr()
        if portI == inputN - 1:
          print('%s'%(bstr),file = reqmem) # ptint request, move to next line
        else:
          print('%s'%(bstr),file = reqmem,end = '_') # ptint request
      
      # print response
      for portI,port_value in enumerate(item['resp']):
        portwidth = resp_msg_format[outputlist[portI]]
        bstr = bitvector(portwidth,port_value).tostr()
        if portI == outputN - 1:
          print('%s'%(bstr),file = respmem) # ptint request, move to next line
        else:
          print('%s'%(bstr),file = respmem,end = '_') # ptint request
      itemI += 1

  print('------ Parse Finished. -----')
  print('caseN = %d'%(len(csaelist_str)))
  print("itemN = %d"%(itemI))
  for i,case_str in enumerate(csaelist_str):
    print('caselist[%d] = "%s";'%(i,case_str))
  reqmem.close()
  respmem.close()   