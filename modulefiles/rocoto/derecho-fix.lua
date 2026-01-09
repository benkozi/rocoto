help([[
   Set environment variables for rocoto (feature/modernize-install branch, 1.3.7)
]])


-- Make sure another version of the same package is not already loaded
conflict("rocoto")

-- Set environment variables
prepend_path("PATH","/glade/derecho/scratch/benkoz/sandbox/rocoto/bin")
prepend_path("LD_LIBRARY_PATH","/glade/derecho/scratch/benkoz/sandbox/rocoto/bin")
