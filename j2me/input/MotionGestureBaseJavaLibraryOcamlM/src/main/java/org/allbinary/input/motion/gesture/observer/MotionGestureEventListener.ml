(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.input.motion.gesture.observer *)

open Allbinary_java [@@warning "-33"]

class virtual motionGestureEventListener =
  object
    inherit BaseMotionGestureEventListener.baseMotionGestureEventListener
    method virtual onPressedMotionGestureEvent : 'any1 . 'any1 -> unit
    method virtual onUpMotionGestureEvent : 'any1 . 'any1 -> unit
    method virtual onDownMotionGestureEvent : 'any1 . 'any1 -> unit
    method virtual onLeftMotionGestureEvent : 'any1 . 'any1 -> unit
    method virtual onRightMotionGestureEvent : 'any1 . 'any1 -> unit
    method virtual onDiagonalDownRightMotionGestureEvent : 'any1 . 'any1 -> unit
    method virtual onDiagonalDownLeftMotionGestureEvent : 'any1 . 'any1 -> unit
    method virtual onDiagonalUpRightMotionGestureEvent : 'any1 . 'any1 -> unit
    method virtual onDiagonalUpLeftMotionGestureEvent : 'any1 . 'any1 -> unit
    method virtual released : 'any1 . 'any1 -> unit
  end


