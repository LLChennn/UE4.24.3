#!/bin/sh

# Set this for other arch if not on x86_64
TEMP_DIR_RELEASE="/tmp/local-freetype-release-$$"
TEMP_DIR_DEBUG="/tmp/local-freetype-debug-$$"
BASE_DIR=`cd "../../"; pwd`
UE_THIRD_PARTY_DIR=`cd "../../../.."; pwd`

LIB_ARCH_PATH="lib/Mac"
LIB_PNG_PATH="$UE_THIRD_PARTY_DIR/libPNG/libPNG-1.5.2/$LIB_ARCH_PATH;$UE_THIRD_PARTY_DIR/libPNG/libPNG-1.5.2"
ZLIB_PATH="$UE_THIRD_PARTY_DIR/zlib/v1.2.8/$LIB_ARCH_PATH"

OSX_VERSION="10.9"

mkdir $TEMP_DIR_RELEASE
mkdir $TEMP_DIR_DEBUG

cd $TEMP_DIR_RELEASE
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$LIB_PNG_PATH;$ZLIB_PATH" -DCMAKE_C_COMPILER=clang -DCMAKE_OSX_DEPLOYMENT_TARGET="$OSX_VERSION" -DCMAKE_DISABLE_FIND_PACKAGE_HarfBuzz=TRUE -DCMAKE_DISABLE_FIND_PACKAGE_BZip2=TRUE "$BASE_DIR"
make -j4
cp -v libfreetype.a "$BASE_DIR/lib/Mac/libfreetype.a"

cd $TEMP_DIR_DEBUG
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_PREFIX_PATH="$LIB_PNG_PATH;$ZLIB_PATH" -DCMAKE_C_COMPILER=clang -DCMAKE_OSX_DEPLOYMENT_TARGET="$OSX_VERSION" -DCMAKE_DISABLE_FIND_PACKAGE_HarfBuzz=TRUE -DCMAKE_DISABLE_FIND_PACKAGE_BZip2=TRUE "$BASE_DIR"
make -j4
cp -v libfreetyped.a "$BASE_DIR/lib/Mac/libfreetyped.a"
