; Auto-generated. Do not edit!


(cl:in-package ilqr_loco-msg)


;//! \htmlinclude TrajExecResult.msg.html

(cl:defclass <TrajExecResult> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrajExecResult (<TrajExecResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajExecResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajExecResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilqr_loco-msg:<TrajExecResult> is deprecated: use ilqr_loco-msg:TrajExecResult instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <TrajExecResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilqr_loco-msg:done-val is deprecated.  Use ilqr_loco-msg:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajExecResult>) ostream)
  "Serializes a message object of type '<TrajExecResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajExecResult>) istream)
  "Deserializes a message object of type '<TrajExecResult>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajExecResult>)))
  "Returns string type for a message object of type '<TrajExecResult>"
  "ilqr_loco/TrajExecResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajExecResult)))
  "Returns string type for a message object of type 'TrajExecResult"
  "ilqr_loco/TrajExecResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajExecResult>)))
  "Returns md5sum for a message object of type '<TrajExecResult>"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajExecResult)))
  "Returns md5sum for a message object of type 'TrajExecResult"
  "89bb254424e4cffedbf494e7b0ddbfea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajExecResult>)))
  "Returns full string definition for message of type '<TrajExecResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajExecResult)))
  "Returns full string definition for message of type 'TrajExecResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajExecResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajExecResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajExecResult
    (cl:cons ':done (done msg))
))
