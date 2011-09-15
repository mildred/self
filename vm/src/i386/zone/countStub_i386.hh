# if defined(__i386__) || defined(__x86_64__)
/* Sun-$Revision: 1.4 $ */

/* Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
   See the LICENSE file for license information. */

# ifdef INTERFACE_PRAGMAS
  # pragma interface
# endif



# if  defined(FAST_COMPILER) || defined(SIC_COMPILER)

  #ifdef __x86_64__
  #warning I replaced a lot of int32 with pint and ptr_t here
  #endif

  inline void CountStub::set_count_addr(CountCodePattern* patt, pint addr) {
    ptr_t* p = (ptr_t*)(pint(insts()) + patt->countAddr_offset);
    *p = ptr_t(addr);
  }
  
  inline pint CountStub::count_addr(CountCodePattern* patt) {
    ptr_t* p = (ptr_t*)(pint(insts()) + patt->countAddr_offset);
    return pint(*p);
  }
  
  inline void CountStub::set_callee(CountCodePattern* patt, pint addr) {
    ptr_t* p = (ptr_t*)(pint(insts()) + patt->nmAddr_offset);
    *p = ptr_t(addr - pint(p) - sizeof(ptr_t));
  }

  

# endif // defined(FAST_COMPILER) || defined(SIC_COMPILER)
# endif // __i386__
