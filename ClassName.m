classdef ClassName< handle & matlab.mixin.Heterogeneous

    properties
         PName(1,1) double =1 
    end
    
    methods
        function obj = ClassName(inputArg1)
            arguments 
                inputArg1(1,1)double
            end
            obj.PName=inputArg1;
        end
        function show(obj)
            arguments 
                obj(1,1)ClassName 
            end
            disp(obj.PName)
        end
    end
    properties(Hidden,Constant)
         pi=3.14;
    end
         methods(Static)       
        function what(inputArg1)
            arguments 
                inputArg1(1,1)double
            end
            disp(inputArg1)
        end
        end
end

