for i in $(find ./ -name *.m) # or whatever other pattern...
do
  if ! grep -q Copyright $i
  then
    cat license.txt $i >$i.new && mv $i.new $i
  fi
done
