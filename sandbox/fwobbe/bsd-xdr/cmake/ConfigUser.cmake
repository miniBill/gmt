# Copyright (c) 2012, Florian Wobbe
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.

#
# Use this file to override CMake variables
#

# Where netcdf will be installed:
set (CMAKE_INSTALL_PREFIX z:/software)

if(MSVC)
	# Automatically adds compiler definitions to all subdirectories too.
	add_definitions(/D_CRT_SECURE_NO_DEPRECATE /DWIN32_LEAN_AND_MEAN)
	# Disable all warnings
	string (REPLACE "/W3" "" CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /w")
endif(MSVC)

# vim: textwidth=78 noexpandtab tabstop=2 softtabstop=2 shiftwidth=2
