help([[
   Set environment variables for rocoto (feature/modernize-install branch, 1.3.7)
]])


-- Make sure another version of the same package is not already loaded
conflict("rocoto")

-- Set environment variables
prepend_path("PATH","/glade/work/epicufsrt/contrib/derecho/rocoto/rocoto-1.3.7-fix/bin")
prepend_path("LD_LIBRARY_PATH","/glade/work/epicufsrt/contrib/derecho/rocoto/rocoto-1.3.7-fix/bin")
