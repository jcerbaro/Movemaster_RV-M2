function r = expand_zeros(m)
% Private function to expand zero components of a multivector by
% replacing empty components with explicit zeros.

% Copyright © 2015 Stephen J. Sangwine and Eckhard Hitzer
% See the file : Copyright.m for further details.

global clifford_descriptor

r = m; % Copy the input multivector.

if isempty(m)
    return % We do not expand an empty multivector.
end

% The multivector is not empty.

s = size(m);
c = classm(m);

for j = 1:clifford_descriptor.m
    if isempty(r.multivector{j})
        r.multivector{j} = zeros(s, c);
    end
end

end

% $Id: expand_zeros.m 271 2021-07-11 19:54:47Z sangwine $
