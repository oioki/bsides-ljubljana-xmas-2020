int main(void)
{
  alarm(10);
  vuln();
  vuln2();
  return 0;
}


void vuln(void)
{
  char local_28 [32];
  
  puts("welcome back! What\'s your name again?");
  fgets(local_28, 20, stdin);
  printf("ah yes ");
  printf(local_28);
  printf("it\'s nice to see you. ");
  return;
}


void vuln2(void)
{
  char local_78 [112];
  
  puts("what would you like to drink?");
  fgets(local_78,0x100,stdin);
  puts("Great choice");
  return;
}
