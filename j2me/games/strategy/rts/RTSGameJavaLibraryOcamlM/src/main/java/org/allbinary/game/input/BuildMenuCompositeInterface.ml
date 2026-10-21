(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.form.ScrollSelectionForm *)

class virtual buildMenuCompositeInterface =
  object
    method virtual getCurrentScrollSelectionForm : unit -> ScrollSelectionForm.scrollSelectionForm
    method virtual setCurrentScrollSelectionForm : 'any1 . 'any1 -> unit
    method virtual getBuildingScrollSelectionForm : unit -> ScrollSelectionForm.scrollSelectionForm
  end


