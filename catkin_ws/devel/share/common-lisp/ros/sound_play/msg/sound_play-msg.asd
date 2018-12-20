
(cl:in-package :asdf)

(defsystem "sound_play-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SoundRequestResult" :depends-on ("_package_SoundRequestResult"))
    (:file "_package_SoundRequestResult" :depends-on ("_package"))
    (:file "SoundRequestFeedback" :depends-on ("_package_SoundRequestFeedback"))
    (:file "_package_SoundRequestFeedback" :depends-on ("_package"))
    (:file "SoundRequestActionFeedback" :depends-on ("_package_SoundRequestActionFeedback"))
    (:file "_package_SoundRequestActionFeedback" :depends-on ("_package"))
    (:file "SoundRequestGoal" :depends-on ("_package_SoundRequestGoal"))
    (:file "_package_SoundRequestGoal" :depends-on ("_package"))
    (:file "SoundRequestActionGoal" :depends-on ("_package_SoundRequestActionGoal"))
    (:file "_package_SoundRequestActionGoal" :depends-on ("_package"))
    (:file "SoundRequestAction" :depends-on ("_package_SoundRequestAction"))
    (:file "_package_SoundRequestAction" :depends-on ("_package"))
    (:file "SoundRequestActionResult" :depends-on ("_package_SoundRequestActionResult"))
    (:file "_package_SoundRequestActionResult" :depends-on ("_package"))
    (:file "SoundRequest" :depends-on ("_package_SoundRequest"))
    (:file "_package_SoundRequest" :depends-on ("_package"))
  ))