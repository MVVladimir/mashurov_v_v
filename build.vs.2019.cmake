set(OpenCV_DIR "C:/Temp/OpenCV/opencv/build")
file(MAKE_DIRECTORY build.vs.2019)
exec_program(cmake build.vs.2019 ARGS .. -G"Visual Studio 16 2019" -Ax64 -DOpenCV_DIR=${OpenCV_DIR} -Dbuild_suffix=vs2019)
exec_program(cmake build.vs.2019 ARGS --build . --config Debug)
exec_program(cmake build.vs.2019 ARGS --build . --config Release)
