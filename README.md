# Just Some Notes

## Simple Rules for Modern CMake

1. Use command with `target_` prefix whenever possible.
2. Use `find_package(Foo)` for dependencies.

    2.1. Write `FindFoo.cmake` and add it to your cmake module path IF AND ONLY IF Foo is not a CMake project.

    2.2. Set `Foo_ROOT` when you place `Foo` in custom directory, this is just magic.

    2.3. To understand `FindFoo.cmake`, read [CMake line by line - using a non-CMake library](https://dominikberner.ch/cmake-find-library).

3. Export your target.

## Good Resource

1. [Build Systems: Combining CUDA and Modern CMake](http://on-demand.gputechconf.com/gtc/2017/presentation/S7438-robert-maynard-build-systems-combining-cuda-and-machine-learning.pdf)
2. [Modern CMake for Library Developers](https://unclejimbo.github.io/2018/06/08/Modern-CMake-for-Library-Developers/)
3. [Effective CMake](https://github.com/boostcon/cppnow_presentations_2017/blob/master/05-19-2017_friday/effective_cmake__daniel_pfeifer__cppnow_05-19-2017.pdf)
4. [More Modern CMake: Working with CMake 3.12 and Later](https://meetingcpp.com/mcpp/slides/2018/MoreModernCMake.pdf)
5. [Deep CMake for Library Authors](https://github.com/CppCon/CppCon2019/blob/master/Presentations/deep_cmake_for_library_authors/deep_cmake_for_library_authors__craig_scott__cppcon_2019.pdf)
6. [It's Time To Do CMake Right](https://pabloariasal.github.io/2018/02/19/its-time-to-do-cmake-right)

