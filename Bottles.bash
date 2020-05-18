#!/bin/bash

#    _________________________________________________________________________________________________
#   |* ___________________________________________GPL-3_Licence_____________________________________ *|
#   | /                                                                                             \ |
#   | |         This program is free software: you can redistribute it and/or modify                | |
#   | |         it under the terms of the GNU General Public License as published by                | |
#   | |         the Free Software Foundation, either version 3 of the License, or                   | |
#   | |         (at your option) any later version.                                                 | |
#   | |                                                                                             | |
#   | |         This program is distributed in the hope that it will be useful,                     | |
#   | |         but WITHOUT ANY WARRANTY; without even the implied warranty of                      | |
#   | |         MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                       | |
#   | |         GNU General Public License for more details.                                        | |
#   | |                                                                                             | |
#   | |         You should have received a copy of the GNU General Public License                   | |
#   | |         along with this program.  If not, see <http://www.gnu.org/licenses/>.               | |
#   | |                                                                                             | |
#   | \_____________________________________________________________________________________________/ |
#   |* _________________________________________Bottle_5/18/2020____________________________________ *|
#   | /                                                                                             \ |
#   | |                                    Written by: Joshua Hoffman                               | |
#   | |                                 joshua.hoffman.ray@protonmail.com                           | |
#   | |                                                                                             | |
#   | \________________________________________Modulation_Project___________________________________/ |
#   |_________________________________________________________________________________________________|


Bottle () {

declare -ag Crafts=( $@ ) && export Wasted=${#Crafts[@]}
declare -ag Rotate=( $(tr -dc '[:digit:]' < /dev/random        |\
head -c1000${Place//*/0} | fold -b${#Place}                    |\
awk '/'$(eval echo {01..${Place}} | tr ' ' '|' )'/ {print $0}' |\
sort | uniq -c | sort | awk '{print $2}'                       ))
eval eval declare -Ag Stuper[\${Array[\$\(\(A++\)\)]}]=\\$\{Input\[{0..$Place}\]\}

	if [[ ${Bottle:=0} = 1 ]]; then
	paste <(echo ${Stuper[@]} | tr ' ' '\n') <(echo ${!Stuper[@]} | tr ' ' '\n')
	fi

}

Bottle $@
