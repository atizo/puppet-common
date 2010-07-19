# alias for compatibility
define modules_dir($mode = 0644, $owner = root, $group = 0){
  module_dir { $name: mode => $mode, owner => $owner, group => $group }
}
