;; Auto-generated. Do not edit!


(when (boundp 'core_msgs::yolomsg)
  (if (not (find-package "CORE_MSGS"))
    (make-package "CORE_MSGS"))
  (shadow 'yolomsg (find-package "CORE_MSGS")))
(unless (find-package "CORE_MSGS::YOLOMSG")
  (make-package "CORE_MSGS::YOLOMSG"))

(in-package "ROS")
;;//! \htmlinclude yolomsg.msg.html


(defclass core_msgs::yolomsg
  :super ros::object
  :slots (_num _className _x1 _y1 _x2 _y2 _score ))

(defmethod core_msgs::yolomsg
  (:init
   (&key
    ((:num __num) 0)
    ((:className __className) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:x1 __x1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y1 __y1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:x2 __x2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y2 __y2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:score __score) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _className __className)
   (setq _x1 __x1)
   (setq _y1 __y1)
   (setq _x2 __x2)
   (setq _y2 __y2)
   (setq _score __score)
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:className
   (&optional __className)
   (if __className (setq _className __className)) _className)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ;; string[] _className
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _className)) 4
    ;; float64[] _x1
    (* 8    (length _x1)) 4
    ;; float64[] _y1
    (* 8    (length _y1)) 4
    ;; float64[] _x2
    (* 8    (length _x2)) 4
    ;; float64[] _y2
    (* 8    (length _y2)) 4
    ;; float64[] _score
    (* 8    (length _score)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;; string[] _className
     (write-long (length _className) s)
     (dolist (elem _className)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _x1
     (write-long (length _x1) s)
     (dotimes (i (length _x1))
       (sys::poke (elt _x1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y1
     (write-long (length _y1) s)
     (dotimes (i (length _y1))
       (sys::poke (elt _y1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _x2
     (write-long (length _x2) s)
     (dotimes (i (length _x2))
       (sys::poke (elt _x2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y2
     (write-long (length _y2) s)
     (dotimes (i (length _y2))
       (sys::poke (elt _y2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _score
     (write-long (length _score) s)
     (dotimes (i (length _score))
       (sys::poke (elt _score i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string[] _className
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _className (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _className i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _x1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _x2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _score (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _score i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get core_msgs::yolomsg :md5sum-) "1607a196c1d846520e717e25497400be")
(setf (get core_msgs::yolomsg :datatype-) "core_msgs/yolomsg")
(setf (get core_msgs::yolomsg :definition-)
      "int64 num
string[] className
float64[] x1
float64[] y1
float64[] x2
float64[] y2
float64[] score 


")



(provide :core_msgs/yolomsg "1607a196c1d846520e717e25497400be")


