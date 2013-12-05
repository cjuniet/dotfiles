// Copyright (c) 2013, Christophe Juniet <christophe at juniet dot net>
// You may do anything with this work that copyright law would normally
// restrict, so long as you retain the above notice(s) and this license
// in all redistributed copies and derived works. There is no warranty.

#include <fstream>
#include <iostream>
#include <limits>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>

class git_info
{
public:
  explicit git_info()
    : _is_inside_git_dir(false), _is_bare_repository(false), _is_inside_work_tree(false)
  {
    const std::string str = git_repo_info();
    if (!str.empty()) {
      std::string s_is_inside_git_dir, s_is_bare_repository, s_is_inside_work_tree;
      std::istringstream iss(str);
      iss >> _git_dir
        >> s_is_inside_git_dir
        >> s_is_bare_repository
        >> s_is_inside_work_tree
        >> _sha1;
      _is_inside_git_dir = (s_is_inside_git_dir == "true");
      _is_bare_repository = (s_is_bare_repository == "true");
      _is_inside_work_tree = (s_is_inside_work_tree == "true");

      git_branch_info();
    }
  }

  bool is_inside_repo() const { return _is_inside_git_dir || _is_inside_work_tree; }
  bool is_inside_git_dir() const { return _is_inside_git_dir; }
  bool is_bare_repository() const { return _is_bare_repository; }
  bool is_inside_work_tree() const { return _is_inside_work_tree; }

  const std::string& git_dir() const { return _git_dir; }
  const std::string& sha1() const { return _sha1; }
  const std::string& branch() const { return _branch; }
  const std::string& flags() const { return _flags; }

private:
  std::string _git_dir;
  std::string _sha1;
  std::string _branch;
  std::string _flags;
  bool _is_inside_git_dir;
  bool _is_bare_repository;
  bool _is_inside_work_tree;

  std::string git_repo_info()
  {
    std::string str;
    FILE* stream = ::popen("git rev-parse --git-dir --is-inside-git-dir"
                           " --is-bare-repository --is-inside-work-tree"
                           " --short HEAD 2> /dev/null", "r");
    if (stream > 0) {
      char buf[BUFSIZ];
      int n = ::fread(buf, sizeof(char), sizeof(buf), stream);
      if (n > 0) str.assign(buf, n-1);
      ::pclose(stream);
    }
    return str;
  }
  
  std::string git_tag_info()
  {
    std::string str;
    FILE* stream = ::popen("git describe --tags --exact-match HEAD 2> /dev/null", "r");
    if (stream > 0) {
      char buf[BUFSIZ];
      int n = ::fread(buf, sizeof(char), sizeof(buf), stream);
      if (n > 0) str.assign(buf, n-1);
      ::pclose(stream);
    }
    return str;
  }

  void git_branch_info()
  {
    std::ifstream ifs(_git_dir + "/HEAD"); // "ref: refs/heads/master"
    if (ifs) {
      ifs >> _branch;
      if (_branch == "ref:") {
        ifs >> _branch;
        _branch = _branch.substr(sizeof("refs/heads"));
      } else {
        _branch = git_tag_info();
        if (_branch.empty()) _branch = _sha1;
      }

      if (_is_inside_git_dir) {
        if (_is_bare_repository) {
          _branch = "BARE:" + _branch;
        } else {
          _branch = "GIT_DIR\\!";
        }
      } else if (_is_inside_work_tree) {
        if (::system("git diff --no-ext-diff --quiet") > 0) {
          _flags += '*';
        }

        if (!_sha1.empty()) {
          if (::system("git diff-index --cached --quiet HEAD --") > 0) {
            _flags += '+';
          }
        } else {
          _flags += '#';
        }

        std::ifstream stash(_git_dir + "/refs/stash");
        if (stash) {
          _flags += '$';
        }
      }
    }
  }
};

int main(int argc, char *argv[])
{
  const std::string red("%{\\033[31m%}");
  const std::string green("%{\\033[32m%}");
  const std::string yellow("%{\\033[33m%}");
  const std::string clear("%{\\033[0m%}");

  if (argc > 1) std::cout << red << argv[1] << clear;

  git_info git;
  if (git.is_inside_repo()) {
    std::cout << ' ' << green << '(' << git.branch();
    if (!git.flags().empty()) {
      std::cout << yellow << ' ' << git.flags() << green;
    }
    std::cout << ')' << clear;
  }

  if (argc > 2) std::cout << red << argv[2] << clear;

  return 0;
}
