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
(* package org.allbinary.game.paint.help *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)

class updateMyFontProperties () =
  object
    val mutable actionStringArray : string array = (Obj.magic 0)
    method actionStringArray = actionStringArray
    method set_actionStringArray value' = actionStringArray <- value'
    val mutable keymappingBeginWidthArray : int array = (Obj.magic 0)
    method keymappingBeginWidthArray = keymappingBeginWidthArray
    method set_keymappingBeginWidthArray value' = keymappingBeginWidthArray <- value'
    val mutable actionStringDeltaXArray : int array = (Obj.magic 0)
    method actionStringDeltaXArray = actionStringDeltaXArray
    method set_actionStringDeltaXArray value' = actionStringDeltaXArray <- value'
    val mutable inputDeltaXArray : int array array = (Obj.magic 0)
    method inputDeltaXArray = inputDeltaXArray
    method set_inputDeltaXArray value' = inputDeltaXArray <- value'
    val mutable sepArray : string array array = (Obj.magic 0)
    method sepArray = sepArray
    method set_sepArray value' = sepArray <- value'
    val mutable sepWidthArray : int array array = (Obj.magic 0)
    method sepWidthArray = sepWidthArray
    method set_sepWidthArray value' = sepWidthArray <- value'
    val mutable charHeight : int = 0
    method charHeight = charHeight
    method set_charHeight value' = charHeight <- value'

    initializer
      begin
        actionStringArray <- ((StringUtil.getInstance ())#getArrayInstance ());
        keymappingBeginWidthArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY;
        actionStringDeltaXArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY;
        inputDeltaXArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY;
        sepArray <- (StringUtil.getInstance ())#oNE_EMPTY_STRING_ARRAY_OF_ARRAYS;
        sepWidthArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY;
        charHeight <- 0;
        ()
      end
  end
let () = java_register_constructor "UpdateMyFontProperties" (fun arguments -> Obj.repr (new updateMyFontProperties (Obj.obj arguments)))


