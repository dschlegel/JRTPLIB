enable_testing()

foreach(T testmultiplex testexistingsockets testautoportbase srtptest rtcpdump readlogfile
	  timetest timeinittest abortdesctest abortdescipv6 tcptest sigintrtest
	  testexttrans)
	add_executable(${T} ${T}.cpp)
    target_link_libraries(${T} jrtplib)
    add_test(NAME ${T} COMMAND ${T})
endforeach(T)

