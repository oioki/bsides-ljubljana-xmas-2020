IL_0000:  nop
IL_0001:  ldc.i4.0
IL_0002:  stloc.0
IL_0003:  br.s  IL_0026

IL_0005:  nop
IL_0006:  ldarg.1
IL_0007:  ldarg.1
IL_0008:  ldlen
IL_0009:  conv.i4
IL_000a:  ldloc.0
IL_000b:  ldarg.1
IL_000c:  ldlen
IL_000d:  conv.i4
IL_000e:  ldc.i4.1
IL_000f:  sub
IL_0010:  rem
IL_0011:  sub
IL_0012:  ldc.i4.1
IL_0013:  sub
IL_0014:  ldelem.u1
IL_0015:  stloc.1
IL_0016:  ldarg.0
IL_0017:  ldloc.0
IL_0018:  ldarg.0
IL_0019:  ldloc.0
IL_001a:  ldelem.u1
IL_001b:  ldloc.1
IL_001c:  not
IL_001d:  xor
IL_001e:  not
IL_001f:  conv.u1
IL_0020:  stelem.i1
IL_0021:  nop
IL_0022:  ldloc.0
IL_0023:  ldc.i4.1
IL_0024:  add
IL_0025:  stloc.0
IL_0026:  ldarg.0
IL_0027:  ldlen
IL_0028:  conv.i4
IL_0029:  ldloc.0
IL_002a:  cgt 0x02

IL_002c:  stloc.2
IL_002d:  ldloc.2
IL_002e:  brtrue.s  IL_0005

IL_0030:  ldc.i4.0
IL_0031:  stloc.3
IL_0032:  br.s  IL_0034

IL_0034:  ldloc.3
IL_0035:  ret
