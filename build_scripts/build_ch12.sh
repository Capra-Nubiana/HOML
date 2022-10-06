START_DIR=${PWD%/*}

# change this directory path according to your configuration
LIBS_DIR=/development/libs

#Chapter 12
cd $START_DIR/Chapter12/caffe2
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=$LIBS_DIR ..
cmake --build . --target all

# Please use the following command line to run the caffe2 sample:
# LD_LIBRARY_PATH=$LIBS_DIR/sources/pytorch/third_party/ideep/mkl-dnn/external/mklml_lnx_2019.0.3.20190220/lib/ ./caffe2_load

cd $START_DIR/Chapter12/dlib
mkdir build
cd build/
cmake -DDLIB_PATH=$LIBS_DIR ..
cmake --build . --target all

cd $START_DIR/Chapter12/sharkml
mkdir build
cd build/
cmake -DSHARK_PATH=$LIBS_DIR ..
cmake --build . --target all

cd $START_DIR/Chapter12/shogun
mkdir build
cd build/
cmake -DSHOGUN_PATH=$LIBS_DIR ..
cmake --build . --target all

cd $START_DIR/Chapter12/pytorch
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=$LIBS_DIR ..
cmake --build . --target all

# Please use the following command line to run the pytorch sample:
# LD_LIBRARY_PATH=$LIBS_DIR/sources/pytorch/third_party/ideep/mkl-dnn/external/mklml_lnx_2019.0.3.20190220/lib/ ./pytorch-save

