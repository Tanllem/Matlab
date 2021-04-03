classdef Cat<Pet
    methods 
        function  voice(obj)
            arguments 
                obj(1,1)Cat
            end
        disp("мяу-мяу")
        end
    end
end