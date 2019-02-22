git status -uno --porcelain | grep -e '^A' | cut -b 4- | xargs dos2unix
