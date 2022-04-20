classdef setpoint < robotics.ros.Message
    %setpoint MATLAB implementation of movemaster_msg/setpoint
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2021 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'movemaster_msg/setpoint' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'aaa39b4215432c08ac9b36247ded9610' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Set1
        Set2
        Set3
        Set4
        Set5
        SetGRIP
        EmergencyStop
        GoHome
    end
    
    properties (Constant, Hidden)
        PropertyList = {'EmergencyStop', 'GoHome', 'Set1', 'Set2', 'Set3', 'Set4', 'Set5', 'SetGRIP'} % List of non-constant message properties
        ROSPropertyList = {'emergency_stop', 'GoHome', 'set_1', 'set_2', 'set_3', 'set_4', 'set_5', 'set_GRIP'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = setpoint(msg)
            %setpoint Construct the message object setpoint
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function set1 = get.Set1(obj)
            %get.Set1 Get the value for property Set1
            set1 = single(obj.JavaMessage.getSet1);
        end
        
        function set.Set1(obj, set1)
            %set.Set1 Set the value for property Set1
            validateattributes(set1, {'numeric'}, {'nonempty', 'scalar'}, 'setpoint', 'Set1');
            
            obj.JavaMessage.setSet1(set1);
        end
        
        function set2 = get.Set2(obj)
            %get.Set2 Get the value for property Set2
            set2 = single(obj.JavaMessage.getSet2);
        end
        
        function set.Set2(obj, set2)
            %set.Set2 Set the value for property Set2
            validateattributes(set2, {'numeric'}, {'nonempty', 'scalar'}, 'setpoint', 'Set2');
            
            obj.JavaMessage.setSet2(set2);
        end
        
        function set3 = get.Set3(obj)
            %get.Set3 Get the value for property Set3
            set3 = single(obj.JavaMessage.getSet3);
        end
        
        function set.Set3(obj, set3)
            %set.Set3 Set the value for property Set3
            validateattributes(set3, {'numeric'}, {'nonempty', 'scalar'}, 'setpoint', 'Set3');
            
            obj.JavaMessage.setSet3(set3);
        end
        
        function set4 = get.Set4(obj)
            %get.Set4 Get the value for property Set4
            set4 = single(obj.JavaMessage.getSet4);
        end
        
        function set.Set4(obj, set4)
            %set.Set4 Set the value for property Set4
            validateattributes(set4, {'numeric'}, {'nonempty', 'scalar'}, 'setpoint', 'Set4');
            
            obj.JavaMessage.setSet4(set4);
        end
        
        function set5 = get.Set5(obj)
            %get.Set5 Get the value for property Set5
            set5 = single(obj.JavaMessage.getSet5);
        end
        
        function set.Set5(obj, set5)
            %set.Set5 Set the value for property Set5
            validateattributes(set5, {'numeric'}, {'nonempty', 'scalar'}, 'setpoint', 'Set5');
            
            obj.JavaMessage.setSet5(set5);
        end
        
        function setgrip = get.SetGRIP(obj)
            %get.SetGRIP Get the value for property SetGRIP
            setgrip = logical(obj.JavaMessage.getSetGRIP);
        end
        
        function set.SetGRIP(obj, setgrip)
            %set.SetGRIP Set the value for property SetGRIP
            validateattributes(setgrip, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'setpoint', 'SetGRIP');
            
            obj.JavaMessage.setSetGRIP(setgrip);
        end
        
        function emergencystop = get.EmergencyStop(obj)
            %get.EmergencyStop Get the value for property EmergencyStop
            emergencystop = logical(obj.JavaMessage.getEmergencyStop);
        end
        
        function set.EmergencyStop(obj, emergencystop)
            %set.EmergencyStop Set the value for property EmergencyStop
            validateattributes(emergencystop, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'setpoint', 'EmergencyStop');
            
            obj.JavaMessage.setEmergencyStop(emergencystop);
        end
        
        function gohome = get.GoHome(obj)
            %get.GoHome Get the value for property GoHome
            gohome = int8(obj.JavaMessage.getGoHome);
        end
        
        function set.GoHome(obj, gohome)
            %set.GoHome Set the value for property GoHome
            validateattributes(gohome, {'numeric'}, {'nonempty', 'scalar'}, 'setpoint', 'GoHome');
            
            obj.JavaMessage.setGoHome(gohome);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Set1 = obj.Set1;
            cpObj.Set2 = obj.Set2;
            cpObj.Set3 = obj.Set3;
            cpObj.Set4 = obj.Set4;
            cpObj.Set5 = obj.Set5;
            cpObj.SetGRIP = obj.SetGRIP;
            cpObj.EmergencyStop = obj.EmergencyStop;
            cpObj.GoHome = obj.GoHome;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Set1 = strObj.Set1;
            obj.Set2 = strObj.Set2;
            obj.Set3 = strObj.Set3;
            obj.Set4 = strObj.Set4;
            obj.Set5 = strObj.Set5;
            obj.SetGRIP = strObj.SetGRIP;
            obj.EmergencyStop = strObj.EmergencyStop;
            obj.GoHome = strObj.GoHome;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Set1 = obj.Set1;
            strObj.Set2 = obj.Set2;
            strObj.Set3 = obj.Set3;
            strObj.Set4 = obj.Set4;
            strObj.Set5 = obj.Set5;
            strObj.SetGRIP = obj.SetGRIP;
            strObj.EmergencyStop = obj.EmergencyStop;
            strObj.GoHome = obj.GoHome;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.movemaster_msg.setpoint.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.movemaster_msg.setpoint;
            obj.reload(strObj);
        end
    end
end
