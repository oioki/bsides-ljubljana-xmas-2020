#include <stdio.h>
#include <stdlib.h>


void FUN_00101380(void)
{
                    /* WARNING: Subroutine does not return */
  exit(-1);
}



void FUN_00101450(char * param_1)  // was long param_1
{
  if (((((int)*(char *)(param_1 + 0x11) - (int)*(char *)(param_1 + 0xf)) +
       (int)*(char *)(param_1 + 4)) - (int)*(char *)(param_1 + 0x12)) - (int)*(char *)(param_1 + 5)
      == -0x3d) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00101380();
}



void FUN_001014d0(char * param_1)  // was long param_1
{
  if ((((int)*(char *)(param_1 + 6) - (int)*(char *)(param_1 + 0xc)) +
      (int)*(char *)(param_1 + 0x11)) -
      (int)*(char *)(param_1 + 0xd) * (int)*(char *)(param_1 + 0xb) == -0x28c9) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00101380();
}



void FUN_00101530(char *param_1)
{
  if ((((int)param_1[0x11] + (int)*param_1) - (int)param_1[0x10] * (int)param_1[4]) -
      (int)param_1[0xb] == -0x36b6) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00101380();
}




void FUN_00101610(char *param_1)
{
  if (((((int)param_1[5] + (int)param_1[0x12]) - (int)param_1[4]) - (int)*param_1) +
      (int)param_1[0xd] == 0x38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00101380();
}



void FUN_001016c0(char *param_1)
{
  if ((((int)param_1[0xf] * (int)param_1[3] + (int)param_1[0x10]) - (int)param_1[5]) - (int)*param_1
      == 0x310c) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00101380();
}




int main(void)
{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  char local_58;  // x
  char local_57;  // m
  char local_56;  // a
  char local_55;  // s
  char local_54;  // {
  char local_53;  // Y
  char local_52;  // o
  char local_51;  // u
  char local_50;  // r
  char local_4f;  // e = 101
  char local_4e;  // _
  char local_4d;  // a
  // char local_4c; // _
  char local_4b;  // m = 109 <- #2
  char local_4a;  // o = 111
  char local_49;  // n = 110
  char local_48;  // s = 115
  char local_47;  // t = 116
  char local_46;  // e  <- #2
  char local_45;  // r = 114
  char local_44;  // }
  char local_null = 0;
  
  const char flag[] = {
    'x', 'm', 'a', 's', '{', 'Y', 'o', 'u', 'r', 'e', '_', 'a', '_', 'm', 'o', 'n', 's', 't', 'e', 'r', '}', 0
  };  // 21 bytes

  printf("** Enter the key to the Kingdom: ");
  // __isoc99_scanf();
  char * ptr = &local_58;
  for (int i=0; i<21; i++) {
    ptr[i] = flag[i];
  }
  printf("%s\n", &local_58);
  iVar6 = (int)local_49;  // n = 110
  iVar7 = (int)local_4b;  // m = 109
  if (iVar6 - iVar6 * iVar7 * (int)local_53 == -0x1047f8) {  // DONE
    printf("1\n");
    iVar5 = (int)local_52;  // o = 111
    iVar2 = (int)local_56;  // a
    if (((int)local_50 + iVar5 + iVar2) - (int)local_53 == 0xe9) {  // local_50
      iVar8 = (int)local_4f;  // e = 101
      iVar4 = (int)local_58;  // x = 120
      if (((int)local_55 * (int)local_55 + (iVar8 - iVar5)) - iVar4 == 0x3327) {  // DONE
        FUN_00101450(&local_58);
        iVar1 = (int)local_46;  // e = 101
        if ((iVar1 - iVar2) + (int)local_44 * iVar7 == 0x353d) {  // DONE
          iVar3 = (int)local_45;  // r = 114
          if ((iVar3 - local_54) - iVar2 == -0x6a) {  // DONE
            FUN_001014d0(&local_58);
            if (iVar3 * local_51 * (int)local_47 == 0x179bc8) {  // local_51 * local_47 == 13572 = 117 * 116
              FUN_00101530(&local_58);  // Note: param was empty
              if (iVar4 - local_51 * iVar8 == -0x2db1) {  // local_51 * iVar8 == 11817 == 117 * 101 == 'u' * 'e'
                if (((int)local_4d - iVar3) - iVar5 * iVar4 == -0x3419) {
                  if ((((((int)local_48 - (int)local_57) + iVar6) - (int)local_4d == 0x13) &&
                      (iVar4 * iVar7 - iVar1 == 0x32b3)) && (local_48 == 's')) {
                    FUN_00101610(&local_58);
                    if (((int)local_4a * (int)local_44 + iVar6) * iVar1 == 0x158d85) {
                      if ((((int)local_57 + -0x73 + (int)local_50) - (int)local_4e == 0xd) &&
                         (iVar8 + (int)local_4e + (int)local_47 == 0x138)) {
                        FUN_001016c0(&local_58);
                        printf("** Great job. You did it again!");
                        return 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_00101380();
}

