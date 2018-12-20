; Auto-generated. Do not edit!


(cl:in-package audio_common_msgs-msg)


;//! \htmlinclude AudioData.msg.html

(cl:defclass <AudioData> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass AudioData (<AudioData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_common_msgs-msg:<AudioData> is deprecated: use audio_common_msgs-msg:AudioData instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <AudioData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_common_msgs-msg:data-val is deprecated.  Use audio_common_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioData>) ostream)
  "Serializes a message object of type '<AudioData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioData>) istream)
  "Deserializes a message object of type '<AudioData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioData>)))
  "Returns string type for a message object of type '<AudioData>"
  "audio_common_msgs/AudioData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioData)))
  "Returns string type for a message object of type 'AudioData"
  "audio_common_msgs/AudioData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioData>)))
  "Returns md5sum for a message object of type '<AudioData>"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioData)))
  "Returns md5sum for a message object of type 'AudioData"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioData>)))
  "Returns full string definition for message of type '<AudioData>"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioData)))
  "Returns full string definition for message of type 'AudioData"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioData>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioData
    (cl:cons ':data (data msg))
))
