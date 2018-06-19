foreach(IDX 1 2 3 4 5 6 7 8)
	add_executable(example${IDX} example${IDX}.cpp)
    target_link_libraries(example${IDX} jrtplib)
endforeach(IDX)

