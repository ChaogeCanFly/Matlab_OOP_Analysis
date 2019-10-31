%%  OOAnalysis Framework
%
%   Copyright 2014-2015 Evangelos D. Katsavrias, Athens, Greece
%
%   This file is part of the OOAnalysis Framework.
%
%   OOAnalysis Framework is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License version 3 as published by
%   the Free Software Foundation.
%
%   OOAnalysis Framework is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with OOAnalysis Framework.  If not, see <https://www.gnu.org/licenses/>.
%
%   Contact Info:
%   Evangelos D. Katsavrias
%   email/skype: vageng@gmail.com
% -----------------------------------------------------------------------

function varargout = instancesCounter(funct)

persistent numberOfInstances

switch funct
    case 'getNumberOfInstances'
        varargout{1} = numberOfInstances;

    case 'addInstance'
        if isempty(numberOfInstances)
            numberOfInstances = 1;
        else
            numberOfInstances = numberOfInstances +1;
        end
        varargout{1} = numberOfInstances;

    case 'deleteInstance'
        numberOfInstances = numberOfInstances -1;

    otherwise
        error('Not a know function on class instances')
end

end