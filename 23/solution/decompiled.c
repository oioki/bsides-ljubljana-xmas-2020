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

undefined8 FUN_00101070(void)
{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  char local_58;
  char local_57;
  char local_56;
  char local_55;
  char local_54;
  char local_53;
  char local_52;
  char local_51;
  char local_50;
  char local_4f;
  char local_4e;
  char local_4d;
  char local_4b;
  char local_4a;
  char local_49;
  char local_48;
  char local_47;
  char local_46;
  char local_45;
  char local_44;
  
  printf("** Enter the key to the Kingdom: ");
  __isoc99_scanf();
  iVar6 = (int)local_49;
  iVar7 = (int)local_4b;
  if (iVar6 - iVar6 * iVar7 * (int)local_53 == -0x1047f8) {
    iVar5 = (int)local_52;
    iVar2 = (int)local_56;
    if (((int)local_50 + iVar5 + iVar2) - (int)local_53 == 0xe9) {
      iVar8 = (int)local_4f;
      iVar4 = (int)local_58;
      if (((int)local_55 * (int)local_55 + (iVar8 - iVar5)) - iVar4 == 0x3327) {
        FUN_00101450(&local_58);
        iVar1 = (int)local_46;
        if ((iVar1 - iVar2) + (int)local_44 * iVar7 == 0x353d) {
          iVar3 = (int)local_45;
          if ((iVar3 - local_54) - iVar2 == -0x6a) {
            FUN_001014d0(&local_58);
            if (iVar3 * local_51 * (int)local_47 == 0x179bc8) {
              FUN_00101530();
              if (iVar4 - local_51 * iVar8 == -0x2db1) {
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

