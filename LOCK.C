/*
 *
 * lock.c
 * Thursday, 1/8/1998.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main (int argc, char *argv[])
   {
//   __asm__ (".byte 0xf0,0x0f,0xc7,0xc8"); 

   _asm _emit 0xf0
   _asm _emit 0x0f
   _asm _emit 0xc7
   _asm _emit 0xc8

   return 0;
   }

