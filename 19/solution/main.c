#include <stdio.h>

// extracted from validator.dll / validateCode

int main()
{
  int sum;
  int j;
  int i;
  unsigned char abStack104 [48];
  unsigned char abStack56 [48];
  // uint local_8;
  
                    /* 0x1000  1  validateCode */
//  local_8 = DAT_10013004 ^ (uint)&stack0xfffffffc;
  abStack56[0] = 0x6c;
  abStack56[1] = 0xfa;
  abStack56[2] = 0x79;
  abStack56[3] = 0xd0;
  abStack56[4] = 0x75;
  abStack56[5] = 0xd7;
  abStack56[6] = 0x67;
  abStack56[7] = 0x94;
  abStack56[8] = 0x6f;
  abStack56[9] = 0x1a;
  abStack56[10] = 100;
  abStack56[11] = 0xc1;
  abStack56[12] = 0x7d;
  abStack56[13] = 0xfb;
  abStack56[14] = 0x67;
  abStack56[15] = 0x29;
  abStack56[16] = 0x60;
  abStack56[17] = 0xdc;
  abStack56[18] = 0x24;
  abStack56[19] = 0x9e;
  abStack56[20] = 0x78;
  abStack56[21] = 4;
  abStack56[22] = 0x4b;
  abStack56[23] = 0xeb;
  abStack56[24] = 0x60;
  abStack56[25] = 0x87;
  abStack56[26] = 0x7c;
  abStack56[27] = 0x55;
  abStack56[28] = 0x20;
  abStack56[29] = 4;
  abStack56[30] = 0x23;
  abStack56[31] = 0xae;
  abStack56[32] = 0x4b;
  abStack56[33] = 0x37;
  abStack56[34] = 0x67;
  abStack56[35] = 0x36;
  abStack56[36] = 0x7c;
  abStack56[37] = 1;
  abStack56[38] = 0x24;
  abStack56[39] = 0xdc;
  abStack56[40] = 0x7b;
  abStack56[41] = 0xe7;
  abStack56[42] = 0x60;
  abStack56[43] = 0xec;
  abStack56[44] = 0x21;
  abStack56[45] = 0x15;
  abStack56[46] = 0x69;
  abStack56[47] = 0x37;
  sum = 0;
  i = 0;
  while ((i < 0x30 && (i != 0x18))) {
    sum = sum + i;
    i = i + 1;
  }
  j = 0;
  while (j < 0x30) {
    abStack104[j / 2] = abStack56[j] ^ (unsigned char)sum;
    j = j + 2;
  }

  for(i=0; i<0x30; i++)  {
    printf("%c", abStack56[i]);
  }
  printf("\n");

  for(j=0; j<0x30; j++)  {
    printf("%c", abStack104[j]);
  }
  printf("\n");

  // FUN_100012f9("m0mAndD4d");
  return;
}