Utilities
=========

Shell
-----

 -  `Browse`
    interactive program to browse differences between *.OLD and *

 -  `changes`

 -  `check_locks`

 -  `Compare`

 -  `ConvertRevisions`

 -  `CreateFileStatus`

 -  `createSourcelinks`

 -  `delete_xlib_symlinks`

 -  `expandNames`
    compute the list of existing files in the set: "files + (names * suffixes)"
 
 -  `fix4.1.1`
 
 -  `ftpPublish`
 
 -  `get_arch`
    operating system
    
 -  `makeFileLists`
    part of the build system
 
 -  `make_glug`
 
 -  `make_incs`
 
 -  `makeSelfWorkingTree`
 
 -  `make_vmDate`
 
 -  `makeVMWorkingTree`
 
 -  `make_xlib_symlinks`
 
 -  `mf`
 
 -  `mzap`
 
 -  `nocompile`
 
 -  `profile`
 
 -  `Publish`
 
 -  `PublishCompare`
 
 -  `pushLink`
 
 -  `remove`
 
 -  `Script`
 
 -  `sdiffc`
 
 -  `testPragma`
 
 -  `undangle`
 
 -  `verifyChecksum`
 
Compiled
--------
 
 -  `cmprev`
    Compares two RCS-style revision numbers; returns -1, 0, or 1 depending
    whether the first is less than, equal to, or greater than the second.
    If the two are incomparable (e.g., 1.2 and 1.2.3), print an error.

 -  `dangling`
    tests whether a named file is a dangling link.
    Can be replaced by `test -L <file> -a ! -e <file>`

 -  `isLink`
    test if a file is a link. Can be replaced by `test -L`
 
 -  `linked`
    tests whether two named files are linked together
    (same device and inode)
 
 -  `makeDeps`

        // This program reads an include file database.
        // The database should cover each self .cpp and .hh file,
        //   but not files in /usr/include
        // The database consists of pairs of nonblank words, where the first word is
        //   the filename that needs to include the file named by the second word.
        // For each .cpp file, this program generates a fooIncludes.hh file that 
        //  the .cpp file may include to include all the needed files in the right order.
        // It also generates a foo.dep file to include in the makefile.
        // Finally it detects cycles, and can work with two files, an old and a new one.
        // To incrementally write out only needed files after a small change.
        //
        // To handle different platforms, I am introducing a platform file.
        // The platform file contains lines like:
        //     os = svr4
        // Then, when processing the includeDB file, a token such as <os>
        // gets replaced by svr4.
        //
        // a line like: "filename no_precompiled_headers" means that a .cpp file
        // does not use a precompiled header.

    This program takes two or four arguments:
    
     -  The old platform file (key/value configuration file)
     -  The old database
     -  The new platform file (optional, takes the old if absent)
     -  The new database (optional, takes the old if absent)
    
    With four arguments, the old files gets replaced by the new ones.
    
    The output are in the following files:
    
     -  `incls/_<filename>.incl`: contains header files with include statements.
        These files are required by the source files, and `incls` must be in the
        include path.

     -  `Dependencies.hh`: Makefile with dependancy information and a list of
        object files
 
 -  `lock_run`
 
 -  `obj_patch`
    replaces first occurrence of "from" pattern with "to" pattern
    used to patch object files

 -  `resetTime`
    resets the read and modified times of the argument file[s]
 
 -  `getRevision`
    Searches the files for an occurrence of, "$Revision:" and print out
    the ident following this pattern.
 
 -  `UpdateFiles`
 
 -  `cwdRootedIn`
    Check if current working directory is rooted in argv[1]
 
 -  `zap`
    zap sends signal SIGKILL to all processes owned by you 
    and which command line has argv[1] as prefix.
 
 -  `skipComments`
    this lex filter skips comments in c and c++ programs
 
 -  `removeUnderscore`
    Remove "_" in front of all identifiers.
 
 -  `AddTrailingNewline`
 
 -  `rself`
    Read from socket, echo to stdout. Read from input, echo to sock. 
    When eof(input) shutdown that direction of sock. If read on sock
    fails, assume it is because self process did a shutdown; then stop
    waiting for output from him and also stop relaying input to him.
    
    Could probably be replaced by netcat

