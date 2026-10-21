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
(* package org.allbinary.android.activity *)

open Allbinary_java [@@warning "-33"]

class virtual progressActivityInterface =
  object
    method virtual runOnUiThread : java_runnable -> unit
    method virtual onDismissTitleProgressBar : unit -> unit
    method virtual onShowTitleProgressBar : int * bool -> unit
    method virtual onTitleProgressBarSetProgress : int -> unit
  end


