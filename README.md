# Canon PIXMA printer driver

This repository contains the printer driver required for printing on
Canon PIXMA printer model IDs 401 through 408, which correspond to the following printer models:

* 401: MP230
* 402: MG2200
* 403: E510
* 404: MG3200
* 405: MG4200
* 406: IP7200
* 407: MG5400
* 408: MG6300

The driver is intended for usage with CUPS on Linux. It should also work on Mac, however this is not tested (feel free to let me know, if you get or don't get it to work).
The driver is provided in parts in binary form, other parts as source code.

Many thanks to Canon for providing the contents of this repository under the terms and conditions of the GNU GPL.

# How to build a RPM package

When you wish to build one printer driver package:

~~~
$ rpmbuild -tb cnijfilter-source-X.XX-Y.tar.gz --define="MODEL [Printer Model Name]" --define="MODEL_NUM [Printer Model ID]" --with build_common_package	
~~~

When you wish to build several printer driver packages:

~~~
$ rpmbuild -tc cnijfilter-source-X.XX-Y.tar.gz --with prepare_fastbuild
$ rpmbuild -tb cnijfilter-source-X.XX-Y.tar.gz --with fastbuild --define="MODEL [Printer Model Name]" --define="MODEL_NUM [Printer Model ID]" --with build_common_package	
$ rpmbuild -tb cnijfilter-source-X.XX-Y.tar.gz --with fastbuild --define="MODEL [Printer Model Name]" --define="MODEL_NUM [Printer Model ID]"
~~~

[Printer Model Name] and [Printer Model ID] can be chosen from the following list:
~~~
        [Printer Model Name]        [Printer Model ID]
    ------------------------------------------------------------------
         mp230                       401
         mg2200                      402
         e510                        403
         mg3200                      404
         mg4200                      405
         ip7200                      406
         mg5400                      407
         mg6300                      408
~~~

## Examples

### Building a driver package for MP230

~~~
$ rpmbuild -tb cnijfilter-source-X.XX-Y.tar.gz --define="MODEL MP230" --define="MODEL_NUM 401" --with build_common_package
~~~

### Building driver packages for MG2200, E510 and MG3200

~~~
$ rpmbuild -tc cnijfilter-source-X.XX-Y.tar.gz --with prepare_fastbuild
$ rpmbuild -tb cnijfilter-source-X.XX-Y.tar.gz --with fastbuild --define="MODEL MG2200" --define="MODEL_NUM 402" --with build_common_package	
$ rpmbuild -tb cnijfilter-source-X.XX-Y.tar.gz --with fastbuild --define="MODEL E510" --define="MODEL_NUM 403"	
$ rpmbuild -tb cnijfilter-source-X.XX-Y.tar.gz --with fastbuild --define="MODEL MG3200" --define="MODEL_NUM 404"	
~~~
