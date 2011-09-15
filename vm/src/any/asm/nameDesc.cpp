/* Sun-$Revision: 30.7 $ */

/* Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
   See the LICENSE file for license information. */

# pragma implementation "nameDesc.hh"
# include "_nameDesc.cpp.incl"

# if  defined(FAST_COMPILER) || defined(SIC_COMPILER)


void LocationNameDesc::print() {
  lprintf("@");
  printLocation(location());
  lprintf(" (%d)", (int)offset);
}

void ValueNameDesc::print() {
  lprintf("=");
  value()->print_real_oop();
  lprintf(" (%d)", (int)offset);
}

void BlockValueNameDesc::print() {
  lprintf("[=");
  value()->print_real_oop();
  lprintf("]");
  lprintf(" (%d)", (int)offset);
}

void MemoizedBlockNameDesc::print() {
  lprintf("[@");
  printLocation(location());
  lprintf("=");
  value()->print_real_oop();
  lprintf("]");
  lprintf(" (%d)", (int)offset);
}

void IllegalNameDesc::print() {
  lprintf("<illegal>");
  lprintf(" (%d)", (int)offset);
}

# ifdef SIC_COMPILER
  ValueLocationNameDesc::ValueLocationNameDesc(Location l, oop val,
                                               blockOop blk) : NameDesc(0) {
    // callers pass in badOop for blk if not needed
    v = val; loc = l; block = blk;
    assert(!val->is_block() ||
           oop(blk) == badOop || val->map()->equal(blk->map()), "bad block");
  }

  void ValueLocationNameDesc::print() {
    lprintf("@");
    printLocation(location());
    lprintf("=");
    value()->print_real_oop();
    lprintf(" [%#lx] (%d)", (long)block, (int)offset);
  }
# endif


# endif // defined(FAST_COMPILER) || defined(SIC_COMPILER)
