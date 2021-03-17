# Defined in - @ line 1
function la --wraps='ls -lAh --group-dirs first' --description 'alias la=ls -lAh --group-dirs first'
  ls -lAh --group-dirs first $argv;
end
