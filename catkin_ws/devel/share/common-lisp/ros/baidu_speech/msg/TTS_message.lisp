; Auto-generated. Do not edit!


(cl:in-package baidu_speech-msg)


;//! \htmlinclude TTS_message.msg.html

(cl:defclass <TTS_message> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (engine
    :reader engine
    :initarg :engine
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (sentence
    :reader sentence
    :initarg :sentence
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (language
    :reader language
    :initarg :language
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (engine_settings
    :reader engine_settings
    :initarg :engine_settings
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (speaker_settings
    :reader speaker_settings
    :initarg :speaker_settings
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0))
)

(cl:defclass TTS_message (<TTS_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TTS_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TTS_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name baidu_speech-msg:<TTS_message> is deprecated: use baidu_speech-msg:TTS_message instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TTS_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baidu_speech-msg:header-val is deprecated.  Use baidu_speech-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'engine-val :lambda-list '(m))
(cl:defmethod engine-val ((m <TTS_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baidu_speech-msg:engine-val is deprecated.  Use baidu_speech-msg:engine instead.")
  (engine m))

(cl:ensure-generic-function 'sentence-val :lambda-list '(m))
(cl:defmethod sentence-val ((m <TTS_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baidu_speech-msg:sentence-val is deprecated.  Use baidu_speech-msg:sentence instead.")
  (sentence m))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <TTS_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baidu_speech-msg:language-val is deprecated.  Use baidu_speech-msg:language instead.")
  (language m))

(cl:ensure-generic-function 'engine_settings-val :lambda-list '(m))
(cl:defmethod engine_settings-val ((m <TTS_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baidu_speech-msg:engine_settings-val is deprecated.  Use baidu_speech-msg:engine_settings instead.")
  (engine_settings m))

(cl:ensure-generic-function 'speaker_settings-val :lambda-list '(m))
(cl:defmethod speaker_settings-val ((m <TTS_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baidu_speech-msg:speaker_settings-val is deprecated.  Use baidu_speech-msg:speaker_settings instead.")
  (speaker_settings m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <TTS_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader baidu_speech-msg:time-val is deprecated.  Use baidu_speech-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TTS_message>) ostream)
  "Serializes a message object of type '<TTS_message>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'engine) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sentence) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'language) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'engine_settings) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speaker_settings) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TTS_message>) istream)
  "Deserializes a message object of type '<TTS_message>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'engine) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sentence) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'language) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'engine_settings) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speaker_settings) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TTS_message>)))
  "Returns string type for a message object of type '<TTS_message>"
  "baidu_speech/TTS_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TTS_message)))
  "Returns string type for a message object of type 'TTS_message"
  "baidu_speech/TTS_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TTS_message>)))
  "Returns md5sum for a message object of type '<TTS_message>"
  "eb6f1b90f95952fc40263a7efbe0490f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TTS_message)))
  "Returns md5sum for a message object of type 'TTS_message"
  "eb6f1b90f95952fc40263a7efbe0490f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TTS_message>)))
  "Returns full string definition for message of type '<TTS_message>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/String engine~%std_msgs/String sentence~%std_msgs/String language~%std_msgs/String engine_settings~%std_msgs/String speaker_settings~%time time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TTS_message)))
  "Returns full string definition for message of type 'TTS_message"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/String engine~%std_msgs/String sentence~%std_msgs/String language~%std_msgs/String engine_settings~%std_msgs/String speaker_settings~%time time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TTS_message>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'engine))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sentence))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'language))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'engine_settings))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speaker_settings))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TTS_message>))
  "Converts a ROS message object to a list"
  (cl:list 'TTS_message
    (cl:cons ':header (header msg))
    (cl:cons ':engine (engine msg))
    (cl:cons ':sentence (sentence msg))
    (cl:cons ':language (language msg))
    (cl:cons ':engine_settings (engine_settings msg))
    (cl:cons ':speaker_settings (speaker_settings msg))
    (cl:cons ':time (time msg))
))
