[SmartFusion] XY Plotter
========================

Final project for [EECS 373]: a web-connected drawing robot that issues HTTP REST requests, parses JSON, and extracts + translates SVG path directions into motor instructions.


## What's in here

TL;DR **everything**.

1. Libero project for building FPGA + generating C libs
2. SoftConsole project for building FreeRTOS + tasks
3. References folder with useful PDFs + a clone of the uIP stack that we used
4. Work-in-Progress folder with some stuff we just didn't have time to get to
5. Super barebones + sketchy NodeJS REST server code (literally wrote this in an hour. sorry bro.)


## How

- Rough start based on reference code from <http://www.freertos.org/FreeRTOS-For-SmartFusion-Cortex-M3.html>
  - With some tweaking, got DHCP working
  - **Future 373 students:** never try to get DHCP working in the lab unless you spoof the MAC and use one of the lab machine's address instead
    - I've got one hardcoded in the [`application_tasks/http_task.c`] file that you can enable if need be
	- You're still better off just running a DHCP server on your own laptop and using that
- Integrated the latest version of [uIP]
  - [Adam Dunkels] is a boss
  - <https://github.com/adamdunkels/uip>
- Integrated [JSMN] for parsing the received HTTP requests
- Custom verilog for motor control
- Super barebones REST server via NodeJS to hold jobs


## License(s)

This gets a little hairy. We use a lot of third-party code in this project-- see individuals for exact licensing restrictions / requirements, but here is a base list:

1. [FreeRTOS] is covered by a [modified version of the GPL](http://www.freertos.org/license.txt)
2. [uIP] is [Copyright (c) 2001-2003, Adam Dunkels.](https://github.com/adamdunkels/uip/blob/master/uip/uip.h#L20)
3. Anything and everything Actel / Microsemi / Libero is [(c) Copyright 2009 Actel Corporation.](#)
4. [JSMN] is covered by the [MIT license](http://www.opensource.org/licenses/mit-license.php)
5. Anything that's left is all yours under [CC0](http://creativecommons.org/publicdomain/zero/1.0/)


## Questions / Comments

[Bart Kiley] and [I] worked super hard to get FreeRTOS + uIP running consistently on the SmartFustion board-- I'd love to hear what you are building and answer any questions you may have about this code. Keep in mind that a lot of this was super new to us. We definitely made some mistakes, but hey, it works! (most of the time)...

### Team / Contact Info

- Bart Kiley
  - [bakiley@umich.edu](mailto:bakiley@umich.edu)
- Kyle Smith
  - [kylebs@umich.edu](mailto:kylebs@umich.edu)
  - <http://ksmith.io>
  - [@knksmith57](https://twitter.com/knksmith57)
- Aaron Ridenour
- Paul Sheridan


[SmartFusion]:    http://www.microsemi.com/products/fpga-soc/design-resources/dev-kits/smartfusion/smartfusion-evaluation-kit
[EECS 373]:       http://www.eecs.umich.edu/eecs/courses/eecs373/
[uIP]:            http://en.wikipedia.org/wiki/UIP_(micro_IP)
[Adam Dunkels]:   http://dunkels.com/adam/
[JSMN]:           http://zserge.com/jsmn.html

[Bart Kiley]:     mailto:bakiley@umich.edu
[I]:              mailto:kylebs@umich.edu

[`application_tasks/http_task.c`]: #
