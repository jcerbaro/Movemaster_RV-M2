function clifford_csv_export(filename,ordering)
% CLIFFORD_CSV_EXPORT  This function outputs a comma-separated values (CSV)
% file containing the multiplication table of the current algebra, intended
% for verification of the table against similar files output by other
% software libraries. The second parameter may take the values 'lexical'
% (the default) or 'bitwise'. This determines the ordering of the columns
% and rows in the output file. The file format is documented separately.

% Copyright © 2015, 2021 Stephen J. Sangwine and Eckhard Hitzer.

global clifford_descriptor

if isempty(clifford_descriptor)
    error('No algebra currently initialised, cannot proceed.')
end

narginchk(1, 2), nargoutchk(0, 0);

if nargin == 1, ordering = 'lexical'; end

if ~ischar(filename)
    error('First parameter must be a character string');
end

if ~ischar(ordering)
    error('Second parameter must be a character string')
end

if ~strcmp(ordering, 'lexical') && ~strcmp(ordering, 'bitwise')
    error('Permitted values for second parameter: lexical, bitwise')
end

F = fopen(filename, 'w', 'n', 'US-ASCII');

if strcmp(ordering, 'lexical')
    order = 1:clifford_descriptor.m;
elseif strcmp(ordering, 'bitwise')
    order = clifford_descriptor.index_table + 1;
else
    error('Program error: ordering string is nonsense')
end

% Now index through the rows and columns of the multiplication table, using
% the index values stored in the vector 'order'. We compute the signs and
% indices dynamically, even if these tables exist in the descriptor, for
% simplicity, and because speed is not important here.

for row = order
    for col = order
        index = clifford_index(row, col);
        literal = clifford_descriptor.index_strings{index};
        switch clifford_sign(row, col)
            case -1
                fprintf(F, '%s', ['-' literal]);
            case 0
                fprintf(F, '%c', '0');
            case 1
                fprintf(F, '%s', literal);
        end
        if col ~= clifford_descriptor.m
            fprintf(F, '%c', ','); % Output the comma between fields.
        end
    end
    fprintf(F, '\r\n'); % Output the CRLF at the end of the row.
end

fclose(F);

end

% $Id: clifford_csv_export.m 270 2021-07-11 19:42:06Z sangwine $
