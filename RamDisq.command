#RamDisq 1.1
#!/bin/bash

diskutil partitionDisk $(hdiutil attach -nomount ram://2048000) 1 GPTFormat APFS 'RamDisq' '100%' && chflags hidden /volumes/"RamDisq" && killall Finder
