set (HEADERS
	rtcpapppacket.h
	rtcpbyepacket.h
	rtcpcompoundpacket.h
	rtcpcompoundpacketbuilder.h
	rtcppacket.h
	rtcppacketbuilder.h
	rtcprrpacket.h
	rtcpscheduler.h
	rtcpsdesinfo.h
	rtcpsdespacket.h
	rtcpsrpacket.h
	rtcpunknownpacket.h
	rtpaddress.h
	rtpcollisionlist.h
	${PROJECT_BINARY_DIR}/src/rtpconfig.h
	rtpdebug.h
	rtpdefines.h
	rtperrors.h
	rtphashtable.h
	rtpinternalsourcedata.h
	rtpipv4address.h
	rtpipv4destination.h
	rtpipv6address.h
	rtpipv6destination.h
	rtpkeyhashtable.h
	rtplibraryversion.h
	rtpmemorymanager.h
	rtpmemoryobject.h
	rtppacket.h
	rtppacketbuilder.h
	rtppollthread.h
	rtprandom.h
	rtprandomrand48.h
	rtprandomrands.h
	rtprandomurandom.h
	rtprawpacket.h
	rtpsession.h
	rtpsessionparams.h
	rtpsessionsources.h
	rtpsourcedata.h
	rtpsources.h
	rtpstructs.h
	rtptimeutilities.h
	rtptransmitter.h
	rtptypes_win.h
	${PROJECT_BINARY_DIR}/src/rtptypes.h
	rtpudpv4transmitter.h
	rtpudpv6transmitter.h  
	rtpbyteaddress.h
	rtpexternaltransmitter.h
	rtpsecuresession.h
	rtpsocketutil.h
	rtpabortdescriptors.h
	rtpselect.h
	rtptcpaddress.h
	rtptcptransmitter.h
	)

set(SOURCES
	rtcpapppacket.cpp
	rtcpbyepacket.cpp
	rtcpcompoundpacket.cpp
	rtcpcompoundpacketbuilder.cpp
	rtcppacket.cpp
	rtcppacketbuilder.cpp
	rtcprrpacket.cpp
	rtcpscheduler.cpp
	rtcpsdesinfo.cpp
	rtcpsdespacket.cpp
	rtcpsrpacket.cpp
	rtpcollisionlist.cpp
	rtpdebug.cpp
	rtperrors.cpp
	rtpinternalsourcedata.cpp
	rtpipv4address.cpp
	rtpipv6address.cpp
	rtpipv4destination.cpp
	rtpipv6destination.cpp
	rtplibraryversion.cpp
	rtppacket.cpp
	rtppacketbuilder.cpp
	rtppollthread.cpp
	rtprandom.cpp
	rtprandomrand48.cpp
	rtprandomrands.cpp
	rtprandomurandom.cpp
	rtpsession.cpp
	rtpsessionparams.cpp
	rtpsessionsources.cpp
	rtpsourcedata.cpp
	rtpsources.cpp
	rtptimeutilities.cpp
	rtpudpv4transmitter.cpp
	rtpudpv6transmitter.cpp 
	rtpbyteaddress.cpp
	rtpexternaltransmitter.cpp
	rtpsecuresession.cpp
	rtpabortdescriptors.cpp
	rtptcpaddress.cpp
	rtptcptransmitter.cpp
	)

if (NOT JRTPLIB_WINSOCK)
	set (SOURCES ${SOURCES} extratransmitters/rtpfaketransmitter.cpp )
	set (HEADERS ${HEADERS} extratransmitters/rtpfaketransmitter.h )
endif ()

if (MSVC)
	set(CMAKE_DEBUG_POSTFIX _d)
endif ()

if (JRTPLIB_COMPILE_STATIC)
	add_library(jrtplib STATIC ${SOURCES})
else (JRTPLIB_COMPILE_STATIC)
    add_library(jrtplib SHARED ${SOURCES})
endif()

set_target_properties(jrtplib PROPERTIES
                      OUTPUT_NAME "jrtp"
                      VERSION ${PROJECT_VERSION}
                      SOVERSION ${PROJECT_VERSION_MAJOR})

target_compile_definitions(jrtplib PRIVATE JRTPLIB_COMPILING)

option(JRTPLIB_WARNINGSASERRORS "Enable \"-Wall -Wextra -Werror -pedantic\" / \"/W4 /WX\"" ON)
if (JRTPLIB_WARNINGSASERRORS)
    target_compile_options(jrtplib PRIVATE
                           $<$<CXX_COMPILER_ID:GNU>:-Wall -Wextra -Werror -pedantic>
                           $<$<CXX_COMPILER_ID:MSVC>:/W4 /WX>)
endif(JRTPLIB_WARNINGSASERRORS)

target_include_directories(jrtplib PUBLIC
                           $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
                           $<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}>
                           $<INSTALL_INTERFACE:include/>)

target_link_libraries(jrtplib ${JRTPLIB_LINK_LIBS})

set_target_properties(jrtplib PROPERTIES
                      PUBLIC_HEADER "${HEADERS}")

install(TARGETS jrtplib
        EXPORT jrtplib-export
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        PUBLIC_HEADER DESTINATION include/jrptlib${PROJECT_VERSION_MAJOR})

install(EXPORT jrtplib-export
        NAMESPACE jrtplib::
        CONFIGURATIONS Debug Release RelWithDebInfo MinSizeRel
        FILE jrtplib-config.cmake
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/jrtplib)