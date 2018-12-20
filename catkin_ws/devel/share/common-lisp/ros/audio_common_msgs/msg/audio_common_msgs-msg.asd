
(cl:in-package :asdf)

(defsystem "audio_common_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AudioData" :depends-on ("_package_AudioData"))
    (:file "_package_AudioData" :depends-on ("_package"))
  ))