// Copyright (c) 2013, Christophe Juniet <christophe at juniet dot net>
// You may do anything with this work that copyright law would normally
// restrict, so long as you retain the above notice(s) and this license
// in all redistributed copies and derived works. There is no warranty.

#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#define BUFSIZE 64

int main(int argc, char *argv[])
{
  struct stat sb;
  FILE *stream;
  char buf[BUFSIZE];
  int n, is_gitdir = 0;

  printf("%%{\\033[31m%%}%%m:%%~");

  if (stat(".git", &sb) != -1 && S_ISDIR(sb.st_mode)) {
    is_gitdir = 1;
  } else {
    stream = popen("git rev-parse --is-inside-work-tree 2> /dev/null", "r");
    if (stream) {
      n = fread(buf, sizeof(char), sizeof(buf), stream);
      pclose(stream);
      if (n > 4 && !strncmp(buf, "true", 4)) is_gitdir = 1;
    }
  }

  if (is_gitdir) {
    stream = popen("git symbolic-ref HEAD | cut -d/ -f3", "r");
    if (stream) {
      n = fread(buf, sizeof(char), sizeof(buf), stream);
      pclose(stream);
      if (n > 0) {
        buf[n-1] = '\0';
        printf(" %%{\\033[32m%%}(%s)", buf);
      }
    }
  }

  printf("%%{\\033[31m%%}%%#%%{\\033[0m%%} ");

  return 0;
}
