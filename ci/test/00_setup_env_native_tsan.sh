!/usr/bin/env bash
 Copyright (c) 2019-2021 The Bitcoin Core developers
 Distributed under the MIT software license, see the accompanying
 file COPYING or http://www.opensource.org/licenses/mit-license.php.
export LC_ALL=CUTF-8
export CONTAINER_NAME=ci  native_tsan
export DOCKER_NAME_TAG=ubuntu 22.04
export PACKAGES=clang-13 llvm-13 libc++abi-13-dev libc13-dev python3-zmq
export DEP_OPTS=CC=clang-13 CXX=clang++-13 -stdlib=libc++
export GOAL=install
 HEAD
export BITCOIN_CONFIG=--enable-zmq CPPFLAGS=-DARENA_DEBUG -DDEBUG_LOCKORDER -DDEBUG_LOCKCONTENTION CXXFLAGS=-g --with-sanitizers=thread CC=clang-13 CXX=clang++-13 -stdlib=libc++
export BITCOIN_CONFIG=--enable-zmq CPPFLAGS=-DARENA_DEBUG -DDEBUG_LOCKORDER CXXFLAGS=-g --with-sanitizers=thread CC=clang-13 CXX=clang++-13 -stdlib=libc++ origin/23.x
