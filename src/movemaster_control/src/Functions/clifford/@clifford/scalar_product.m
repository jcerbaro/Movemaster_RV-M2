function d = scalar_product(a, b)
% SCALAR_PRODUCT  Multivector scalar product.
% The two arguments must be the same size or one must be scalar.
% This is an elementwise operation if applied to arrays.

% Copyright © 2015 Stephen J. Sangwine and Eckhard Hitzer
% See the file : Copyright.m for further details.

narginchk(2, 2), nargoutchk(0, 1)

if ~isa(a, 'clifford') || ~isa(b, 'clifford')
    error('Both arguments must be multivectors.')
end

check_signature(a);
check_signature(b);

global clifford_descriptor

sa = size(a);
sb = size(b);

if ~(isscalar(a) || isscalar(b) || all(sa == sb))
    error('The parameters must have the same size or one must be scalar.');
end

ca = classm(a);
cb = classm(b);

if ~strcmp(ca, cb)
    error(['Parameters must have elements of the same class, found: ', ...
            ca, ' and ', cb])
end

if isscalar(a)
    d = zeros(sb, ca);
else
    d = zeros(sa, ca); % In this case, we know a and b are the same size.
end

% Algorithm: take the scalar part of the full geometric product a .* b. If
% we were to compute it like this, we would needlessly compute the whole
% multivector before discarding all except the scalar part, so instead we
% compute just the scalar part of the product. This is given by the
% products of the element values, times the square of the corresponding
% basis element, which we find from the clifford_sign function.

S = diag(clifford_descriptor.sign); % If the sign in the descriptor is
                                    % empty, S will be empty too. We deal
                                    % with this below.

for j = 1:clifford_descriptor.m    
    if isempty(a.multivector{j}) || isempty(b.multivector{j})
         % Either or both of a and b have empty jth components, so we do
         % nothing and move on to the next j, because the (implicit)
         % product of the jth components is zero.
         continue
    end
    
    % Neither a nor b has a non-empty jth component, so we must actually
    % compute the product.
    
    if isempty(S)
        T = clifford_sign(j,j);
    else
        T = S(j);
    end
    
    switch T
        case -1
            d = d - a.multivector{j} .* b.multivector{j};
        case 0
            continue % To the next value of j. If the sign is 0,
                     % the value of the product is also zero, so we
                     % don't add it, nor even compute it.
        case 1
            d = d + a.multivector{j} .* b.multivector{j};
        otherwise
            error('Program error, sign has value not in set {-1, 0, +1}')
    end
end
end

% $Id: scalar_product.m 272 2021-07-12 14:59:54Z sangwine $
