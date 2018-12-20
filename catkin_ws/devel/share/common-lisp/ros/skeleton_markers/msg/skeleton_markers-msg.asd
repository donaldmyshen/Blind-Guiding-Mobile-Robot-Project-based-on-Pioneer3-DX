
(cl:in-package :asdf)

(defsystem "skeleton_markers-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Skeleton" :depends-on ("_package_Skeleton"))
    (:file "_package_Skeleton" :depends-on ("_package"))
  ))