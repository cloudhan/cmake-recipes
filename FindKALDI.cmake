include(FindPackageHandleStandardArgs)

find_path(KALDI_INCLUDE_DIRS base/kaldi-common.h HINTS ${KALDI_HOME}/include)

unset(KALDI_LIBRARIES)
set(KALDI_SUBLIBRARIES cudadecoder decoder  cudamatrix ivector feat fstext gmm
 hmm  kws lat lm matrix nnet nnet2 nnet3 online2 rnnlm sgmm2 transform tree util base chain)

foreach(KALDI_SUBLIBRARY ${KALDI_SUBLIBRARIES})
    find_library(KALDI_${KALDI_SUBLIBRARY}_LIBRARY
        NAMES kaldi-${KALDI_SUBLIBRARY}.a
        HINTS ${KALDI_HOME}/lib)

    list(APPEND KALDI_LIBRARIES ${KALDI_${KALDI_SUBLIBRARY}_LIBRARY})
endforeach()

# damn it, I failed build static openfst library with -fPIC
# so we will use a shared library to link against
set(KALDI_ADDITIONAL_SUBLIBRARIES fst)
foreach(KALDI_SUBLIBRARY ${KALDI_ADDITIONAL_SUBLIBRARIES})
    find_library(KALDI_${KALDI_SUBLIBRARY}_LIBRARY
        NAMES lib${KALDI_SUBLIBRARY}.so
        HINTS ${KALDI_HOME}/lib)
    list(APPEND KALDI_LIBRARIES ${KALDI_${KALDI_SUBLIBRARY}_LIBRARY})
endforeach()

find_package_handle_standard_args(KALDI REQUIRED_VARS KALDI_LIBRARIES KALDI_INCLUDE_DIRS)
