function result = ef
% EF Return basis element of current algebra.

% Copyright © 2015-2021 Stephen J. Sangwine and Eckhard Hitzer
% See the file : Copyright.m for further details.

narginchk(0,0), nargoutchk(0,1)

global clifford_descriptor

persistent p

% If p has not been initialised previously, or if it has, but its
% signature differs from the current algebra, initialise it.

if isempty(p) || any(get_signature(p) ~= clifford_descriptor.signature)
    p = clifford(mfilename);
end

result = p;

end

% *** DO NOT EDIT THIS FILE --- it was automatically generated ***
% *** by the script file:   clifford_parameterless_functions.m ***
