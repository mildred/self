# if defined(__i386__) || defined(__x86_64__)
/* Sun-$Revision: 1.4 $ */

/* Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
   See the LICENSE file for license information. */


# if  defined(FAST_COMPILER) || defined(SIC_COMPILER)

# ifdef INTERFACE_PRAGMAS
  # pragma interface
# endif

    // included in CountCodePattern class

  public:

    fint countAddr_offset;      
    fint limit_offset;
    fint nmAddr_offset;
    fint recompileStub_offset;
    
    static const int32 initial_count_addr = 0x12345678;
    static const int32 initial_limit      = 0xabcdef01;
    static const int32 initial_nmAddr     = 0x87654321;


# endif // defined(FAST_COMPILER) || defined(SIC_COMPILER)
# endif // __i386__
