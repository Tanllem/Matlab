classdef Vec3D< handle & matlab.mixin.Heterogeneous

    properties(Access=private)
         coord(1,3) double =[0 0 0];
    end
    methods
        function obj = Vec3D(x,y,z)
            arguments 
                x(1,1)double
                y(1,1)double
                z(1,1)double
            end
            obj.coord=[x,y,z];
        end
    end

%%     
    properties(Dependent)
         x
         y
         z
    end
    methods
        function x = get.x(obj)
            arguments 
                obj(1,1)Vec3D
            end
            x=obj.coord(1);
        end
        function  set.x(obj,arg)
            arguments 
                obj(1,1)Vec3D
                arg(1,1)double
            end
            obj.coord(1)=arg;
        end
        function y = get.y(obj)
            arguments 
                obj(1,1)Vec3D
            end
            y=obj.coord(2);
        end
        function  set.y(obj,arg)
            arguments 
                obj(1,1)Vec3D
                arg(1,1)double
            end
            obj.coord(2)=arg;
        end
        function z= get.z(obj)
            arguments 
                obj(1,1)Vec3D
            end
            z=obj.coord(3);
        end
        function  set.z(obj,arg)
            arguments 
                obj(1,1)Vec3D
                arg(1,1)double
            end
            obj.coord(3)=arg;
        end
        function norma = get_norm(obj)
            arguments 
                obj(1,1)Vec3D
            end
            norma=norm(obj.coord)
        end        
        end
end

