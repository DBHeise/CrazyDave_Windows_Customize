$flare = "https://www.myget.org/F/flare/api/v2"

choco install ollydbg ollydbg.ollydump ollydbg.ollydumpex ollydbg2 ollydbg2.ollydumpex x64dbg windbg windbg.kenstheme windbg.ollydumpex windbg.pykd idafree binaryninja ilspy dnspy dotpeek de4dot javaruntime jad-gui vbdecompiler idr.small ffdec fileinsight hxd 010editor peid explorersuite peview die upx apimonitor regshot offvis exeinfope --allow-empty-checksums --source $flare --confirm

choco install python2 --package-parameters '/InstallDir:"C:\Program Files\Python27"' --confirm --allow-empty-checksums

choco install python --version 2.7.13 --allow-empty-checksums --source $flare --confirm

choco pin add -n=python --version 2.7.13

choco install vcpython27 --confirm

if(Get-OSArchitectureWidth -Compare 64) {
    cinst python2.nopath -s $flare --x86 --package-parameters '/InstallDir:"C:\Program Files (x86)\Python27"' --confirm
}

# Python Modules
choco install hexdump pefile winappdbg pycrypto cryptography oletools --source python --allow-empty-checksums --confirm


#Cryptography for humans
choco install https://github.com/williballenthin/vivisect/zipball/master --source python --allow-empty-checksums --confirm

# Python Tools
choco install fakenet-ng.python floss.python --allow-empty-checksums --source $flare --confirm
cinst https://github.com/fireeye/flare-qdb/zipball/master -source python --allow-empty-checksums --force-dependencies --confirm

choco install choco install vcredist-all --allow-empty-checksums --confirm