; Auto-generated. Do not edit!


(cl:in-package sound_play-msg)


;//! \htmlinclude SoundRequest.msg.html

(cl:defclass <SoundRequest> (roslisp-msg-protocol:ros-message)
  ((sound
    :reader sound
    :initarg :sound
    :type cl:fixnum
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (volume
    :reader volume
    :initarg :volume
    :type cl:float
    :initform 0.0)
   (arg
    :reader arg
    :initarg :arg
    :type cl:string
    :initform "")
   (arg2
    :reader arg2
    :initarg :arg2
    :type cl:string
    :initform ""))
)

(cl:defclass SoundRequest (<SoundRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_play-msg:<SoundRequest> is deprecated: use sound_play-msg:SoundRequest instead.")))

(cl:ensure-generic-function 'sound-val :lambda-list '(m))
(cl:defmethod sound-val ((m <SoundRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_play-msg:sound-val is deprecated.  Use sound_play-msg:sound instead.")
  (sound m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SoundRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_play-msg:command-val is deprecated.  Use sound_play-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'volume-val :lambda-list '(m))
(cl:defmethod volume-val ((m <SoundRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_play-msg:volume-val is deprecated.  Use sound_play-msg:volume instead.")
  (volume m))

(cl:ensure-generic-function 'arg-val :lambda-list '(m))
(cl:defmethod arg-val ((m <SoundRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_play-msg:arg-val is deprecated.  Use sound_play-msg:arg instead.")
  (arg m))

(cl:ensure-generic-function 'arg2-val :lambda-list '(m))
(cl:defmethod arg2-val ((m <SoundRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_play-msg:arg2-val is deprecated.  Use sound_play-msg:arg2 instead.")
  (arg2 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SoundRequest>)))
    "Constants for message type '<SoundRequest>"
  '((:BACKINGUP . 1)
    (:NEEDS_UNPLUGGING . 2)
    (:NEEDS_PLUGGING . 3)
    (:NEEDS_UNPLUGGING_BADLY . 4)
    (:NEEDS_PLUGGING_BADLY . 5)
    (:ALL . -1)
    (:PLAY_FILE . -2)
    (:SAY . -3)
    (:PLAY_STOP . 0)
    (:PLAY_ONCE . 1)
    (:PLAY_START . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SoundRequest)))
    "Constants for message type 'SoundRequest"
  '((:BACKINGUP . 1)
    (:NEEDS_UNPLUGGING . 2)
    (:NEEDS_PLUGGING . 3)
    (:NEEDS_UNPLUGGING_BADLY . 4)
    (:NEEDS_PLUGGING_BADLY . 5)
    (:ALL . -1)
    (:PLAY_FILE . -2)
    (:SAY . -3)
    (:PLAY_STOP . 0)
    (:PLAY_ONCE . 1)
    (:PLAY_START . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundRequest>) ostream)
  "Serializes a message object of type '<SoundRequest>"
  (cl:let* ((signed (cl:slot-value msg 'sound)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'volume))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'arg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'arg))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'arg2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'arg2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundRequest>) istream)
  "Deserializes a message object of type '<SoundRequest>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sound) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'volume) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'arg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'arg2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundRequest>)))
  "Returns string type for a message object of type '<SoundRequest>"
  "sound_play/SoundRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundRequest)))
  "Returns string type for a message object of type 'SoundRequest"
  "sound_play/SoundRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundRequest>)))
  "Returns md5sum for a message object of type '<SoundRequest>"
  "d098ce4a040686259137ece23a625167")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundRequest)))
  "Returns md5sum for a message object of type 'SoundRequest"
  "d098ce4a040686259137ece23a625167")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundRequest>)))
  "Returns full string definition for message of type '<SoundRequest>"
  (cl:format cl:nil "# IMPORTANT: You should never have to generate this message yourself.~%# Use the sound_play::SoundClient C++ helper or the~%# sound_play.libsoundplay.SoundClient Python helper.~%~%# Sounds~%int8 BACKINGUP = 1~%int8 NEEDS_UNPLUGGING = 2~%int8 NEEDS_PLUGGING = 3~%int8 NEEDS_UNPLUGGING_BADLY = 4~%int8 NEEDS_PLUGGING_BADLY = 5~%~%# Sound identifiers that have special meaning~%int8 ALL = -1 # Only legal with PLAY_STOP~%int8 PLAY_FILE = -2~%int8 SAY = -3~%~%int8 sound # Selects which sound to play (see above)~%~%# Commands~%int8 PLAY_STOP = 0 # Stop this sound from playing~%int8 PLAY_ONCE = 1 # Play the sound once~%int8 PLAY_START = 2 # Play the sound in a loop until a stop request occurs~%~%int8 command # Indicates what to do with the sound~%~%# Volume at which to play the sound, with 0 as mute and 1.0 as 100%.~%float32 volume~%~%string arg # file name or text to say~%string arg2 # other arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundRequest)))
  "Returns full string definition for message of type 'SoundRequest"
  (cl:format cl:nil "# IMPORTANT: You should never have to generate this message yourself.~%# Use the sound_play::SoundClient C++ helper or the~%# sound_play.libsoundplay.SoundClient Python helper.~%~%# Sounds~%int8 BACKINGUP = 1~%int8 NEEDS_UNPLUGGING = 2~%int8 NEEDS_PLUGGING = 3~%int8 NEEDS_UNPLUGGING_BADLY = 4~%int8 NEEDS_PLUGGING_BADLY = 5~%~%# Sound identifiers that have special meaning~%int8 ALL = -1 # Only legal with PLAY_STOP~%int8 PLAY_FILE = -2~%int8 SAY = -3~%~%int8 sound # Selects which sound to play (see above)~%~%# Commands~%int8 PLAY_STOP = 0 # Stop this sound from playing~%int8 PLAY_ONCE = 1 # Play the sound once~%int8 PLAY_START = 2 # Play the sound in a loop until a stop request occurs~%~%int8 command # Indicates what to do with the sound~%~%# Volume at which to play the sound, with 0 as mute and 1.0 as 100%.~%float32 volume~%~%string arg # file name or text to say~%string arg2 # other arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundRequest>))
  (cl:+ 0
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'arg))
     4 (cl:length (cl:slot-value msg 'arg2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundRequest
    (cl:cons ':sound (sound msg))
    (cl:cons ':command (command msg))
    (cl:cons ':volume (volume msg))
    (cl:cons ':arg (arg msg))
    (cl:cons ':arg2 (arg2 msg))
))
