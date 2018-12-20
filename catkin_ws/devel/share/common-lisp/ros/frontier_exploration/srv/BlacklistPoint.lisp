; Auto-generated. Do not edit!


(cl:in-package frontier_exploration-srv)


;//! \htmlinclude BlacklistPoint-request.msg.html

(cl:defclass <BlacklistPoint-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass BlacklistPoint-request (<BlacklistPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BlacklistPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BlacklistPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontier_exploration-srv:<BlacklistPoint-request> is deprecated: use frontier_exploration-srv:BlacklistPoint-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <BlacklistPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontier_exploration-srv:point-val is deprecated.  Use frontier_exploration-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BlacklistPoint-request>) ostream)
  "Serializes a message object of type '<BlacklistPoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BlacklistPoint-request>) istream)
  "Deserializes a message object of type '<BlacklistPoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BlacklistPoint-request>)))
  "Returns string type for a service object of type '<BlacklistPoint-request>"
  "frontier_exploration/BlacklistPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlacklistPoint-request)))
  "Returns string type for a service object of type 'BlacklistPoint-request"
  "frontier_exploration/BlacklistPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BlacklistPoint-request>)))
  "Returns md5sum for a message object of type '<BlacklistPoint-request>"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BlacklistPoint-request)))
  "Returns md5sum for a message object of type 'BlacklistPoint-request"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BlacklistPoint-request>)))
  "Returns full string definition for message of type '<BlacklistPoint-request>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BlacklistPoint-request)))
  "Returns full string definition for message of type 'BlacklistPoint-request"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BlacklistPoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BlacklistPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BlacklistPoint-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude BlacklistPoint-response.msg.html

(cl:defclass <BlacklistPoint-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BlacklistPoint-response (<BlacklistPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BlacklistPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BlacklistPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontier_exploration-srv:<BlacklistPoint-response> is deprecated: use frontier_exploration-srv:BlacklistPoint-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BlacklistPoint-response>) ostream)
  "Serializes a message object of type '<BlacklistPoint-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BlacklistPoint-response>) istream)
  "Deserializes a message object of type '<BlacklistPoint-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BlacklistPoint-response>)))
  "Returns string type for a service object of type '<BlacklistPoint-response>"
  "frontier_exploration/BlacklistPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlacklistPoint-response)))
  "Returns string type for a service object of type 'BlacklistPoint-response"
  "frontier_exploration/BlacklistPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BlacklistPoint-response>)))
  "Returns md5sum for a message object of type '<BlacklistPoint-response>"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BlacklistPoint-response)))
  "Returns md5sum for a message object of type 'BlacklistPoint-response"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BlacklistPoint-response>)))
  "Returns full string definition for message of type '<BlacklistPoint-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BlacklistPoint-response)))
  "Returns full string definition for message of type 'BlacklistPoint-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BlacklistPoint-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BlacklistPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BlacklistPoint-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BlacklistPoint)))
  'BlacklistPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BlacklistPoint)))
  'BlacklistPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlacklistPoint)))
  "Returns string type for a service object of type '<BlacklistPoint>"
  "frontier_exploration/BlacklistPoint")