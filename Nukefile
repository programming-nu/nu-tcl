
;; source files
(set @m_files     (filelist -"^objc/.*\.m$"))
(set @nu_files 	  (filelist -"^nu/.*\.nu$"))

;; framework description
(set @framework "Tcl")
(set @framework_identifier "nu.programming.tcl")
(set @framework_creator_code "????")
(set @framework_initializer "TclInit")

;; libraries
(set @ldflags "-framework Foundation -framework Nu -ltcl")

(compilation-tasks)
(framework-tasks)

(task "clobber" => "clean" is
      (SH "rm -rf #{@framework_dir}"))

(task "default" => "framework")

(task "doc" is (SH "nudoc"))

(task "install" => "framework" is
      (SH "sudo rm -rf /Library/Frameworks/#{@framework}.framework")
      (SH "ditto #{@framework}.framework /Library/Frameworks/#{@framework}.framework"))

(task "test" => "framework" is
      (SH "nutest test/test_*.nu"))

