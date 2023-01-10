rem for automation
sed -i 's/do_prompt /echo /g' media-autobuild_suite/build/media-suite_helper.sh media-autobuild_suite/build/media-suite_compile.sh
sed -i 's/read.*yn/yn=y/g' media-autobuild_suite/build/media-suite_update.sh
sed -i "/^color$/d" media-autobuild_suite/media-autobuild_suite.bat
sed -i -r '/g (video^|audio) tools^|_check=\(xvc.pc^|sleep 5^|_check=\(libplacebo.^|# static do_vcs/i find $LOCALBUILDDIR -maxdepth 3 -type d -name "*-git" -exec rm -rf {} +' media-autobuild_suite/build/media-suite_compile.sh

rem for fix build
sed -i '2i pacman -U https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-gmp-6.2.1-3-any.pkg.tar.zst --noconfirm --ask 20' media-autobuild_suite/build/media-suite_compile.sh
sed -i  's!s:LIBPATH_lib(ass^|av(^|device^|filter))!s:LIBPATH_(lib)?(ffmpeg^|ass^|av^|archive^|bluray^|jpegxl(^|device^|filter))!g' media-autobuild_suite/build/media-suite_compile.sh


echo hello!!
