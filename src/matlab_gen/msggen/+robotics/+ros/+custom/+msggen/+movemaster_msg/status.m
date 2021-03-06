classdef status < robotics.ros.Message
    %status MATLAB implementation of movemaster_msg/status
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2021 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'movemaster_msg/status' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '283025d1e58370fa7a43c23c572de06b' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Joint
        Setpoint
        PulseCount
        Error
        Output
        ControlLoop
        IsDone
    end
    
    properties (Constant, Hidden)
        PropertyList = {'ControlLoop', 'Error', 'IsDone', 'Joint', 'Output', 'PulseCount', 'Setpoint'} % List of non-constant message properties
        ROSPropertyList = {'control_loop', 'error', 'IsDone', 'joint', 'output', 'pulse_count', 'setpoint'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = status(msg)
            %status Construct the message object status
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
        
        function joint = get.Joint(obj)
            %get.Joint Get the value for property Joint
            joint = char(obj.JavaMessage.getJoint);
        end
        
        function set.Joint(obj, joint)
            %set.Joint Set the value for property Joint
            joint = convertStringsToChars(joint);
            
            validateattributes(joint, {'char', 'string'}, {}, 'status', 'Joint');
            
            obj.JavaMessage.setJoint(joint);
        end
        
        function setpoint = get.Setpoint(obj)
            %get.Setpoint Get the value for property Setpoint
            setpoint = single(obj.JavaMessage.getSetpoint);
        end
        
        function set.Setpoint(obj, setpoint)
            %set.Setpoint Set the value for property Setpoint
            validateattributes(setpoint, {'numeric'}, {'nonempty', 'scalar'}, 'status', 'Setpoint');
            
            obj.JavaMessage.setSetpoint(setpoint);
        end
        
        function pulsecount = get.PulseCount(obj)
            %get.PulseCount Get the value for property PulseCount
            pulsecount = single(obj.JavaMessage.getPulseCount);
        end
        
        function set.PulseCount(obj, pulsecount)
            %set.PulseCount Set the value for property PulseCount
            validateattributes(pulsecount, {'numeric'}, {'nonempty', 'scalar'}, 'status', 'PulseCount');
            
            obj.JavaMessage.setPulseCount(pulsecount);
        end
        
        function error = get.Error(obj)
            %get.Error Get the value for property Error
            error = single(obj.JavaMessage.getError);
        end
        
        function set.Error(obj, error)
            %set.Error Set the value for property Error
            validateattributes(error, {'numeric'}, {'nonempty', 'scalar'}, 'status', 'Error');
            
            obj.JavaMessage.setError(error);
        end
        
        function output = get.Output(obj)
            %get.Output Get the value for property Output
            output = single(obj.JavaMessage.getOutput);
        end
        
        function set.Output(obj, output)
            %set.Output Set the value for property Output
            validateattributes(output, {'numeric'}, {'nonempty', 'scalar'}, 'status', 'Output');
            
            obj.JavaMessage.setOutput(output);
        end
        
        function controlloop = get.ControlLoop(obj)
            %get.ControlLoop Get the value for property ControlLoop
            controlloop = single(obj.JavaMessage.getControlLoop);
        end
        
        function set.ControlLoop(obj, controlloop)
            %set.ControlLoop Set the value for property ControlLoop
            validateattributes(controlloop, {'numeric'}, {'nonempty', 'scalar'}, 'status', 'ControlLoop');
            
            obj.JavaMessage.setControlLoop(controlloop);
        end
        
        function isdone = get.IsDone(obj)
            %get.IsDone Get the value for property IsDone
            isdone = logical(obj.JavaMessage.getIsDone);
        end
        
        function set.IsDone(obj, isdone)
            %set.IsDone Set the value for property IsDone
            validateattributes(isdone, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'status', 'IsDone');
            
            obj.JavaMessage.setIsDone(isdone);
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
            cpObj.Joint = obj.Joint;
            cpObj.Setpoint = obj.Setpoint;
            cpObj.PulseCount = obj.PulseCount;
            cpObj.Error = obj.Error;
            cpObj.Output = obj.Output;
            cpObj.ControlLoop = obj.ControlLoop;
            cpObj.IsDone = obj.IsDone;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Joint = strObj.Joint;
            obj.Setpoint = strObj.Setpoint;
            obj.PulseCount = strObj.PulseCount;
            obj.Error = strObj.Error;
            obj.Output = strObj.Output;
            obj.ControlLoop = strObj.ControlLoop;
            obj.IsDone = strObj.IsDone;
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
            
            strObj.Joint = obj.Joint;
            strObj.Setpoint = obj.Setpoint;
            strObj.PulseCount = obj.PulseCount;
            strObj.Error = obj.Error;
            strObj.Output = obj.Output;
            strObj.ControlLoop = obj.ControlLoop;
            strObj.IsDone = obj.IsDone;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.movemaster_msg.status.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.movemaster_msg.status;
            obj.reload(strObj);
        end
    end
end
