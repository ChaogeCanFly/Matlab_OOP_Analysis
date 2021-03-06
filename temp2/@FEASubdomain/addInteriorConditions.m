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

function addInteriorConditions(obj, varargin)

if nargin == 1
    obj.InteriorConditions = cat(2, obj.InteriorConditions, FEAInteriorConditions);
    return
end

if isa(varargin{1}, 'FEAInteriorConditions')
    obj.InteriorConditions = cat(2, obj.InteriorConditions, varargin{1});
elseif isa(varargin{1}, 'cell')
    obj.InteriorConditions = cat(2, obj.InteriorConditions, FEAInteriorConditions(varargin{1}));
else
    throw(MException('FEA:addTensorField', 'Wrong input argument, provide a single input argument of class FEAInteriorConditions, or data for the constructor of the same class.'));
end

end