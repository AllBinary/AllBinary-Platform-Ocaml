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
(* package org.allbinary.media.image.cache *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)

class bufferedImageInfo ((width_arg : int), (height_arg : int), (type__arg : int)) =
  object (self)
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    val mutable type_ : int = 0
    method type_ = type_
    method set_type_ value' = type_ <- value'
    
    

    method getWidth () : int =
        begin
        width
        end
    

    method setWidth ((width_arg : int)) : unit =
        begin
        width <- width_arg
        end
    

    method getHeight () : int =
        begin
        height
        end
    

    method setHeight ((height_arg : int)) : unit =
        begin
        height <- height_arg
        end
    

    method getType () : int =
        begin
        type_
        end
    

    method setType ((type__arg : int)) : unit =
        begin
        type_ <- type__arg
        end
    

    method toString () : string =
        begin
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("BufferedImageInfo -"));
        ignore (!stringBuffer#append (!commonLabels#wIDTH_LABEL));
        ignore (!stringBuffer#appendint ((self#getWidth ())));
        ignore (!stringBuffer#append (!commonLabels#hEIGHT_LABEL));
        ignore (!stringBuffer#appendint ((self#getHeight ())));
        ignore (!stringBuffer#append (" Type: "));
        ignore (!stringBuffer#appendint ((self#getType ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        width <- width_arg;
        height <- height_arg;
        type_ <- type__arg
      end
  end
let () = java_register_constructor "BufferedImageInfo" (fun arguments -> Obj.repr (new bufferedImageInfo (Obj.obj arguments)))


