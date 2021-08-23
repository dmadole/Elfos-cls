
;  Copyright 2021, David S. Madole <david@madole.net>
;
;  This program is free software: you can redistribute it and/or modify
;  it under the terms of the GNU General Public License as published by
;  the Free Software Foundation, either version 3 of the License, or
;  (at your option) any later version.
;
;  This program is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;  GNU General Public License for more details.
;
;  You should have received a copy of the GNU General Public License
;  along with this program.  If not, see <https://www.gnu.org/licenses/>.


           ; Include kernal API entry points

include    include/bios.inc
include    include/kernel.inc


           ; Executable program header

           org     2000h - 6
           dw      start
           dw      end-start
           dw      start

start:     org     2000h
           br      main


           ; Build information

           db      8+80h              ; month
           db      22                 ; day
           dw      2021               ; year
           dw      1                  ; build

           db      'See github.com/dmadole/Elfos-cls for more info',0


           ; Main code starts here, check provided argument

main:      sep     scall
           dw      o_inmsg
           db      27,'[H',27,'[J',0

           sep      sret

end:       ; That's all, folks!

