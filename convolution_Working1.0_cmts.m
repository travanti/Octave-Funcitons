## Copyright (C) 2020 ntrav
##
## This is a function to calculate a convolution. It was created as a proof
## of concept in order to practice implementing practical functions using
## linear algebra techniques. For EE510 class as Portland State University
## The instructor for which is John Lipor. Nathan Travanti wrote this code
## independantly as part of an assignment for this class.
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} convolution (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ntrav <nathantravanti@gmail.com>
## Created: 2020-01-19

## Notes for the creation of code below:
## this code assumes that the h is an array of filter coefficents
## that is to be run against a signal x
## code assumes that the two inputs are of equal dimension.
## As of rev 1.0 it was not the intent to add input conditioning and
## checking.

function retval = convolution (h, x)
span = length(x) + length(h) - 1;
H = zeros(span,length(x));
k = 1; #declare loop variable 
i = 1;
j = 0;

while(i <= length(x))
  while(k <= length(x)) 
  H(k+j,i) = h(1,k);
  k = k + 1;
  endwhile

k = 1;
i = i +1;
j = j +1;
endwhile
#H , was for debugging output
retval = transpose(H * transpose(x));

endfunction
