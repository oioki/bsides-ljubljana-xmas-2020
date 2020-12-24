
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Assembly1
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0B 43 6F 6E 73 6F 6C 65 41 70 70 31 00 00 ) // ...ConsoleApp1..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0B 43 6F 6E 73 6F 6C 65 41 70 70 31 00 00 ) // ...ConsoleApp1..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 32 30 00 00 )                            //  2020..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 33 63 64 37 35 37 35 62 2D 62 64 39 32   // ..$3cd7575b-bd92
                                                                                                  2D 34 33 37 38 2D 39 37 64 32 2D 32 65 32 32 61   // -4378-97d2-2e22a
                                                                                                  65 31 35 37 30 66 32 00 00 )                      // e1570f2..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 38 01 00 54   // ,Version=v4.8..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 12 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 2E 38 )                      // ework 4.8
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.mresource public Assembly1.file
{
  // Offset: 0x00000000 Length: 0x00000048
  // WARNING: managed resource file Assembly1.file created
}
.module Assembly1.exe
// MVID: {04CCAA32-B2C3-45FE-926A-FADEC4A2B2F6}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00020003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Assembly1.Program
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       33 (0x21)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  brfalse.s  IL_000b

    IL_0004:  ldarg.0
    IL_0005:  ldlen
    IL_0006:  ldc.i4.0
    IL_0007:  ceq
    IL_0009:  br.s       IL_000c

    IL_000b:  ldc.i4.1
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  brfalse.s  IL_0017

    IL_0010:  nop
    IL_0011:  newobj     instance void [mscorlib]System.Exception::.ctor()
    IL_0016:  throw

    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.0
    IL_0019:  ldelem.ref
    IL_001a:  call       void Assembly1.Program::ValidateCode(string)
    IL_001f:  nop
    IL_0020:  ret
  } // end of method Program::Main

  .method public hidebysig static bool  method1(uint8[] arg1, uint8[] arg2) cil managed
  {
    // Code size       54 (0x36)
    .maxstack  5
    .locals init (uint8 i,
             uint8 j,
             uint8 not_used,
             uint8 result)
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
    IL_002a:  cgt

    IL_002c:  stloc.2
    IL_002d:  ldloc.2
    IL_002e:  brtrue.s  IL_0005

    IL_0030:  ldc.i4.0
    IL_0031:  stloc.3
    IL_0032:  br.s  IL_0034

    IL_0034:  ldloc.3
    IL_0035:  ret
  }

  .method public hidebysig static void  ValidateCode(string code) cil managed
  {
    // Code size       442 (0x1ba)
    .maxstack  9
    .locals init ([mscorlib]System.Reflection.AssemblyName V_0,
             [mscorlib]System.Reflection.Emit.AssemblyBuilder V_1,
             [mscorlib]System.Reflection.Emit.ModuleBuilder V_2,
             [mscorlib]System.Reflection.Emit.TypeBuilder V_3,
             [mscorlib]System.Reflection.Emit.MethodBuilder V_4,
             [mscorlib]System.Reflection.Emit.SignatureHelper V_5,
             uint8[] V_6,
             uint8[] V_7,
             uint8[] V_8,
             bool V_9,
             bool V_10,
             [mscorlib]System.IO.Stream V_11,
             [mscorlib]System.IO.MemoryStream V_12,
             bool V_13)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       bool [mscorlib]System.String::IsNullOrEmpty(string)
    IL_0007:  stloc.s    V_10
    IL_0009:  ldloc.s    V_10
    IL_000b:  brfalse.s  IL_0016

    IL_000d:  nop
    IL_000e:  ldstr      "chr1s7ma5"
    IL_0013:  starg.s    code
    IL_0015:  nop
    IL_0016:  ldstr      "assembly1"
    IL_001b:  newobj     instance void [mscorlib]System.Reflection.AssemblyName::.ctor(string)
    IL_0020:  stloc.0
    IL_0021:  call       [mscorlib]System.AppDomain [mscorlib]System.AppDomain::get_CurrentDomain()
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance [mscorlib]System.Reflection.Emit.AssemblyBuilder [mscorlib]System.AppDomain::DefineDynamicAssembly([mscorlib]System.Reflection.AssemblyName,
                                                                                                                                     [mscorlib]System.Reflection.Emit.AssemblyBuilderAccess)
    IL_002d:  stloc.1
    IL_002e:  ldloc.1
    IL_002f:  ldstr      "module1"
    IL_0034:  callvirt   instance [mscorlib]System.Reflection.Emit.ModuleBuilder [mscorlib]System.Reflection.Emit.AssemblyBuilder::DefineDynamicModule(string)
    IL_0039:  stloc.2
    IL_003a:  ldloc.2
    IL_003b:  ldstr      "type1"
    IL_0040:  callvirt   instance [mscorlib]System.Reflection.Emit.TypeBuilder [mscorlib]System.Reflection.Emit.ModuleBuilder::DefineType(string)
    IL_0045:  stloc.3
    IL_0046:  ldloc.3
    IL_0047:  ldstr      "method1"
    IL_004c:  ldc.i4.s   22
    IL_004e:  ldc.i4.1
    IL_004f:  ldtoken    [mscorlib]System.Boolean
    IL_0054:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0059:  ldc.i4.2
    IL_005a:  newarr     [mscorlib]System.Type
    IL_005f:  dup
    IL_0060:  ldc.i4.0
    IL_0061:  ldtoken    uint8[]
    IL_0066:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_006b:  stelem.ref
    IL_006c:  dup
    IL_006d:  ldc.i4.1
    IL_006e:  ldtoken    uint8[]
    IL_0073:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0078:  stelem.ref
    IL_0079:  callvirt   instance [mscorlib]System.Reflection.Emit.MethodBuilder [mscorlib]System.Reflection.Emit.TypeBuilder::DefineMethod(string,
                                                                                                                                            [mscorlib]System.Reflection.MethodAttributes,
                                                                                                                                            [mscorlib]System.Reflection.CallingConventions,
                                                                                                                                            [mscorlib]System.Type,
                                                                                                                                            [mscorlib]System.Type[])
    IL_007e:  stloc.s    V_4
    IL_0080:  call       [mscorlib]System.Reflection.Emit.SignatureHelper [mscorlib]System.Reflection.Emit.SignatureHelper::GetLocalVarSigHelper()
    IL_0085:  stloc.s    V_5
    IL_0087:  ldloc.s    V_5
    IL_0089:  ldtoken    [mscorlib]System.Int32
    IL_008e:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0093:  callvirt   instance void [mscorlib]System.Reflection.Emit.SignatureHelper::AddArgument([mscorlib]System.Type)
    IL_0098:  nop
    IL_0099:  ldloc.s    V_5
    IL_009b:  ldtoken    [mscorlib]System.Byte
    IL_00a0:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_00a5:  callvirt   instance void [mscorlib]System.Reflection.Emit.SignatureHelper::AddArgument([mscorlib]System.Type)
    IL_00aa:  nop
    IL_00ab:  ldloc.s    V_5
    IL_00ad:  ldtoken    [mscorlib]System.Byte
    IL_00b2:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_00b7:  callvirt   instance void [mscorlib]System.Reflection.Emit.SignatureHelper::AddArgument([mscorlib]System.Type)
    IL_00bc:  nop
    IL_00bd:  ldloc.s    V_5
    IL_00bf:  ldtoken    uint8[]
    IL_00c4:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_00c9:  callvirt   instance void [mscorlib]System.Reflection.Emit.SignatureHelper::AddArgument([mscorlib]System.Type)
    IL_00ce:  nop
    IL_00cf:  call       !!0[] [mscorlib]System.Array::Empty<uint8>()
    IL_00d4:  stloc.s    V_6
    IL_00d6:  call       [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Assembly::GetExecutingAssembly()
    IL_00db:  ldstr      "Assembly1.file"
    IL_00e0:  callvirt   instance [mscorlib]System.IO.Stream [mscorlib]System.Reflection.Assembly::GetManifestResourceStream(string)
    IL_00e5:  stloc.s    V_11
    .try
    {
      IL_00e7:  nop
      IL_00e8:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
      IL_00ed:  stloc.s    V_12
      IL_00ef:  ldloc.s    V_11
      IL_00f1:  ldloc.s    V_12
      IL_00f3:  callvirt   instance void [mscorlib]System.IO.Stream::CopyTo([mscorlib]System.IO.Stream)
      IL_00f8:  nop
      IL_00f9:  ldloc.s    V_12
      IL_00fb:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_0100:  stloc.s    V_6
      IL_0102:  nop
      IL_0103:  leave.s    IL_0112

    }  // end .try
    finally
    {
      IL_0105:  ldloc.s    V_11
      IL_0107:  brfalse.s  IL_0111

      IL_0109:  ldloc.s    V_11
      IL_010b:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0110:  nop
      IL_0111:  endfinally
    }  // end handler
    IL_0112:  ldloc.s    V_6
    IL_0114:  ldlen
    IL_0115:  conv.i4
    IL_0116:  ldc.i4.s   18
    IL_0118:  sub
    IL_0119:  newarr     [mscorlib]System.Byte
    IL_011e:  stloc.s    V_7
    IL_0120:  ldc.i4.s   18
    IL_0122:  newarr     [mscorlib]System.Byte
    IL_0127:  stloc.s    V_8
    IL_0129:  ldloc.s    V_6
    IL_012b:  ldloc.s    V_7
    IL_012d:  ldloc.s    V_6
    IL_012f:  ldlen
    IL_0130:  conv.i4
    IL_0131:  ldc.i4.s   18
    IL_0133:  sub
    IL_0134:  call       void [mscorlib]System.Array::Copy([mscorlib]System.Array,
                                                           [mscorlib]System.Array,
                                                           int32)
    IL_0139:  nop
    IL_013a:  ldloc.s    V_6
    IL_013c:  ldloc.s    V_6
    IL_013e:  ldlen
    IL_013f:  conv.i4
    IL_0140:  ldc.i4.s   18
    IL_0142:  sub
    IL_0143:  ldloc.s    V_8
    IL_0145:  ldc.i4.0
    IL_0146:  ldc.i4.s   18
    IL_0148:  call       void [mscorlib]System.Array::Copy([mscorlib]System.Array,
                                                           int32,
                                                           [mscorlib]System.Array,
                                                           int32,
                                                           int32)
    IL_014d:  nop
    IL_014e:  ldloc.s    V_4
    IL_0150:  ldloc.s    V_7
    IL_0152:  ldc.i4.5
    IL_0153:  ldloc.s    V_5
    IL_0155:  callvirt   instance uint8[] [mscorlib]System.Reflection.Emit.SignatureHelper::GetSignature()
    IL_015a:  ldnull
    IL_015b:  ldnull
    IL_015c:  nop
    IL_0161:  nop
    IL_0162:  ldloc.3
    IL_0163:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Reflection.Emit.TypeBuilder::CreateType()
    IL_0168:  callvirt   instance [mscorlib]System.Reflection.MethodInfo[] [mscorlib]System.Type::GetMethods()
    IL_016d:  ldc.i4.0
    IL_016e:  ldelem.ref
    IL_016f:  ldnull
    IL_0170:  ldc.i4.2
    IL_0171:  newarr     [mscorlib]System.Object
    IL_0176:  dup
    IL_0177:  ldc.i4.0
    IL_0178:  ldloc.s    V_8
    IL_017a:  stelem.ref
    IL_017b:  dup
    IL_017c:  ldc.i4.1
    IL_017d:  call       [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_ASCII()
    IL_0182:  ldarg.0
    IL_0183:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0188:  stelem.ref
    IL_0189:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_018e:  unbox.any  [mscorlib]System.Boolean
    IL_0193:  stloc.s    V_9
    IL_0195:  ldloc.s    V_9
    IL_0197:  stloc.s    V_13
    IL_0199:  ldloc.s    V_13
    IL_019b:  brfalse.s  IL_01ac

    IL_019d:  nop
    IL_019e:  ldstr      "Correct code"
    IL_01a3:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_01a8:  nop
    IL_01a9:  nop
    IL_01aa:  br.s       IL_01b9

    IL_01ac:  nop
    IL_01ad:  ldstr      "Wrong code"
    IL_01b2:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_01b7:  nop
    IL_01b8:  nop
    IL_01b9:  ret
  } // end of method Program::ValidateCode

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

} // end of class Assembly1.Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
