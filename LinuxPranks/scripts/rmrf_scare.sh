#!/bin/bash

touch ~/runme.sh

echo "#!/bin/bash" >> ~/runme.sh
echo "trap '' 2" >> ~/runme.sh
echo "echo 'Deleting:'" >> ~/runme.sh
echo "du -h --max-depth=1 --exclude='.*' ~" >> ~/runme.sh
echo "sleep 3" >> ~/runme.sh
echo "ls -lahR ~" >> ~/runme.sh
echo "echo '[1] +  Done                     /bin/rm -rf ~ &'" >> ~/runme.sh
echo "trap 2" >> ~/runme.sh

chmod a+x ~/runme.sh

echo "Done!"
