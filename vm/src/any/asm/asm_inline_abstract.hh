/* Sun-$Revision: 30.9 $ */

/* Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
   See the LICENSE file for license information. */

# if  !GENERATE_DEBUGGING_AIDS

# ifdef INTERFACE_PRAGMAS
  # pragma interface
# endif

# endif


# if  defined(FAST_COMPILER) || defined(SIC_COMPILER)

  inline void BaseAssembler::finalize() {
    if ((BaseAssembler*)theAssembler == this) theAssembler = NULL;
  }
  
  inline void BaseAssembler::Data(int32 p, bool print) {
    if (printing && print) {
      lprintf("  .data %ld\n", p);
    }
    Alloc(int32);
    *data = p;
  }
  
 inline void BaseAssembler::Short(int32 i) {
   int16 s = i;
   assert(int32(s) == i, "short must be short");
   Alloc(int16);
   *data = i;
 }
  
 inline void BaseAssembler::Byte(int32 i) {
    assert( -128 <= i  &&  i <= 255, "maybe bad format?");
    Alloc(char);
    *data = (char)i;
  }

  inline void BaseAssembler::Comment(pc_t s) {
    if (printing) {
      lprintf("  // %s\n", s); 
    }
  }
  
  inline void BaseAssembler::Zero() { Data(int32(0)); }
  
  inline void BaseAssembler::Data(oop p, bool print) {
    assert(!(p->is_mark() || p == badOop), "bad oop");
    if (printing && print) {
      lprintf("  .data ");
      #warning Conversion from pointer to integer, does printX understand full range of pint?
      printX(pint(p), OopOperand);
      lprintf("\n");
    }
    if (p->is_mem()) doAddOffset(OopOperand, false, false);
    
    Alloc(oop);
    *data = p;
  }
  


# endif // defined(FAST_COMPILER) || defined(SIC_COMPILER)

