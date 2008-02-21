;; test_tcl.nu
;;  tests for Objective-C Tcl wrapper.
;;
;;  Copyright (c) 2008 Tim Burks, Neon Design Technology, Inc.

(load "Tcl")

(class TestTcl is NuTestCase
     
     (- (id) testInterpreter is
	  (set tcl ((TclInterpreter alloc) init))
	  (assert_equal "4" (tcl eval:"expr 2 + 2"))))
