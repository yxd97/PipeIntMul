class logicvector:
  def __init__(self,nbits,value):
    self.nbits = nbits
    self.umax = 2**nbits - 1
    value  = value % (self.umax + 1)
    self.posmax = (2**(nbits-1)-1)
    self.negmin = -2**(nbits-1)
    if value <= self.posmax and value >= 0:
      self.value = value
    elif value >= self.negmin and value < 0:
      self.value = value
    elif value > self.posmax:
      self.value = value - (self.umax - 1)
    else:
      self.value = value + self.umax

  
  def __add__(self,rhs):
    return logicvector(self.nbits,self.value + rhs.value)
  
  def __sub__(self,rhs):
    return logicvector(self.nbits,self.value - rhs.value)
  
  def __and__(self,rhs):
    return logicvector(self.nbits,self.value & rhs.value)
    
  def __or__(self,rhs):
    return logicvector(self.nbits,self.value | rhs.value)
    
  def __xor__(self,rhs):
    return logicvector(self.nbits,self.value ^ rhs.value)
  
  def __neg__(self):
    return logicvector(self.nbits,-self.value)
  
  def __invert__(self):
    return logicvector(self.nbits,-self.value-1)

  def __eq__(self,rhs):
    if self.value == rhs.value:
      return True
    else:
      return False
    
  def __ne__(self,rhs):
    if self.value != rhs.value:
      return True
    else:
      return False
      
  def putsbin(self):
    bstr = ''
    t = []
    dec = self.value
    for i in range(self.nbits):
      t.append(dec % 2)
      dec = dec // 2
    for i in range(self.nbits,-1,-1):
      if t[i] == 0:
        bstr += '0'  
      else:
        bstr += '1'
    return bstr

class bit:
  def __init__(self,value):
    if value == 'x':
      self.value = 'x'
    else:
      self.value = value % 2
  
  def __and__(self,rhs):
    if self.value == 'x' or rhs.value == 'x':
      return bit('x')
    else:
      if self.value == 1 and rhs.value == 1:
        return bit(1)
      else:
        return bit(0)
  
  def __or__(self,rhs):
    if self.value == 'x' or rhs.value == 'x':
      return bit('x')
    else:
      if self.value == 0 and rhs.value == 0:
        return bit(0)
      else:
        return bit(1)
  
  def __xor__(self,rhs):
    if self.value == 'x' or rhs.value == 'x':
      return bit('x')
    else:
      if self.value != rhs.value:
        return bit(1)
      else:
        return bit(0)

  def __invert__(self):
    if self.value == 'x':
      return bit('x')
    else:
      return bit(1-self.value)
 
  def __eq__(self,rhs):
    if self.value == rhs.value:
      return True
    else:
      return False
    
  def __ne__(self,rhs):
    if self.value != rhs.value:
      return True
    else:
      return False
  
  def __add__(self,rhs):
    if self.value == 'x' or rhs.value == 'x':
      return bit('x')
    else:
      if self.value == 0 and rhs.value == 0:
        return bit(0)
      elif self.value == 0 and rhs.value == 1:
        return bit(1)
      elif self.value == 1 and rhs.value == 0:
        return bit(1)
      else:
        return bit(0)
  
  def __sub__(self,rhs):
    return self + rhs
  
  def pullup(self):
    self.value = 1
  
  def pulldown(self):
    self.value = 0

class bitvector:
  def __init__(self,width,value):
    self.bits = []
    self.width = width
    if value != 'x':
      dec = value % (2**width)
      for i in range(width):
        self.bits.append(bit(dec % 2))
        dec = dec // 2
      self.bits = self.bits[::-1]
    else:
      for i in range(width):
        self.bits.append(bit('x'))
  
  def __add__(self,rhs):
    tmp = bitvector(self.width + rhs.width,0)
    tmp.bits = self.bits.extend(rhs.bits)
    return tmp
  
  def tostr(self):
    bstr = ''
    for b in self.bits:
      if b.value == 0:
        bstr += '0'
      elif b.value == 1:
        bstr += '1'
      else:
        bstr += 'x'
    return bstr
