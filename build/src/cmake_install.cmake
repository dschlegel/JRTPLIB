# Install script for directory: /home/dsc/sw/jrtplib2/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/dsc/sw/jrtplib2/build/src/libjrtp.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jrptlib3" TYPE FILE FILES
    "/home/dsc/sw/jrtplib2/src/rtcpapppacket.h"
    "/home/dsc/sw/jrtplib2/src/rtcpbyepacket.h"
    "/home/dsc/sw/jrtplib2/src/rtcpcompoundpacket.h"
    "/home/dsc/sw/jrtplib2/src/rtcpcompoundpacketbuilder.h"
    "/home/dsc/sw/jrtplib2/src/rtcppacket.h"
    "/home/dsc/sw/jrtplib2/src/rtcppacketbuilder.h"
    "/home/dsc/sw/jrtplib2/src/rtcprrpacket.h"
    "/home/dsc/sw/jrtplib2/src/rtcpscheduler.h"
    "/home/dsc/sw/jrtplib2/src/rtcpsdesinfo.h"
    "/home/dsc/sw/jrtplib2/src/rtcpsdespacket.h"
    "/home/dsc/sw/jrtplib2/src/rtcpsrpacket.h"
    "/home/dsc/sw/jrtplib2/src/rtcpunknownpacket.h"
    "/home/dsc/sw/jrtplib2/src/rtpaddress.h"
    "/home/dsc/sw/jrtplib2/src/rtpcollisionlist.h"
    "/home/dsc/sw/jrtplib2/build/src/rtpconfig.h"
    "/home/dsc/sw/jrtplib2/src/rtpdebug.h"
    "/home/dsc/sw/jrtplib2/src/rtpdefines.h"
    "/home/dsc/sw/jrtplib2/src/rtperrors.h"
    "/home/dsc/sw/jrtplib2/src/rtphashtable.h"
    "/home/dsc/sw/jrtplib2/src/rtpinternalsourcedata.h"
    "/home/dsc/sw/jrtplib2/src/rtpipv4address.h"
    "/home/dsc/sw/jrtplib2/src/rtpipv4destination.h"
    "/home/dsc/sw/jrtplib2/src/rtpipv6address.h"
    "/home/dsc/sw/jrtplib2/src/rtpipv6destination.h"
    "/home/dsc/sw/jrtplib2/src/rtpkeyhashtable.h"
    "/home/dsc/sw/jrtplib2/src/rtplibraryversion.h"
    "/home/dsc/sw/jrtplib2/src/rtpmemorymanager.h"
    "/home/dsc/sw/jrtplib2/src/rtpmemoryobject.h"
    "/home/dsc/sw/jrtplib2/src/rtppacket.h"
    "/home/dsc/sw/jrtplib2/src/rtppacketbuilder.h"
    "/home/dsc/sw/jrtplib2/src/rtppollthread.h"
    "/home/dsc/sw/jrtplib2/src/rtprandom.h"
    "/home/dsc/sw/jrtplib2/src/rtprandomrand48.h"
    "/home/dsc/sw/jrtplib2/src/rtprandomrands.h"
    "/home/dsc/sw/jrtplib2/src/rtprandomurandom.h"
    "/home/dsc/sw/jrtplib2/src/rtprawpacket.h"
    "/home/dsc/sw/jrtplib2/src/rtpsession.h"
    "/home/dsc/sw/jrtplib2/src/rtpsessionparams.h"
    "/home/dsc/sw/jrtplib2/src/rtpsessionsources.h"
    "/home/dsc/sw/jrtplib2/src/rtpsourcedata.h"
    "/home/dsc/sw/jrtplib2/src/rtpsources.h"
    "/home/dsc/sw/jrtplib2/src/rtpstructs.h"
    "/home/dsc/sw/jrtplib2/src/rtptimeutilities.h"
    "/home/dsc/sw/jrtplib2/src/rtptransmitter.h"
    "/home/dsc/sw/jrtplib2/src/rtptypes_win.h"
    "/home/dsc/sw/jrtplib2/build/src/rtptypes.h"
    "/home/dsc/sw/jrtplib2/src/rtpudpv4transmitter.h"
    "/home/dsc/sw/jrtplib2/src/rtpudpv6transmitter.h"
    "/home/dsc/sw/jrtplib2/src/rtpbyteaddress.h"
    "/home/dsc/sw/jrtplib2/src/rtpexternaltransmitter.h"
    "/home/dsc/sw/jrtplib2/src/rtpsecuresession.h"
    "/home/dsc/sw/jrtplib2/src/rtpsocketutil.h"
    "/home/dsc/sw/jrtplib2/src/rtpabortdescriptors.h"
    "/home/dsc/sw/jrtplib2/src/rtpselect.h"
    "/home/dsc/sw/jrtplib2/src/rtptcpaddress.h"
    "/home/dsc/sw/jrtplib2/src/rtptcptransmitter.h"
    "/home/dsc/sw/jrtplib2/src/extratransmitters/rtpfaketransmitter.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg]|[Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo]|[Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/jrtplib/jrtplib-config.cmake")
      file(DIFFERENT EXPORT_FILE_CHANGED FILES
           "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/jrtplib/jrtplib-config.cmake"
           "/home/dsc/sw/jrtplib2/build/src/CMakeFiles/Export/lib/cmake/jrtplib/jrtplib-config.cmake")
      if(EXPORT_FILE_CHANGED)
        file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/jrtplib/jrtplib-config-*.cmake")
        if(OLD_CONFIG_FILES)
          message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/jrtplib/jrtplib-config.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
          file(REMOVE ${OLD_CONFIG_FILES})
        endif()
      endif()
    endif()
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/jrtplib" TYPE FILE FILES "/home/dsc/sw/jrtplib2/build/src/CMakeFiles/Export/lib/cmake/jrtplib/jrtplib-config.cmake")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg]|[Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo]|[Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

