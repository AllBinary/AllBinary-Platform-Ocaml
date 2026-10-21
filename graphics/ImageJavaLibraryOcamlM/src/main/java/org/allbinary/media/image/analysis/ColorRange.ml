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
(* package org.allbinary.media.image.analysis *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class colorRange () =
  object (self)
    val mutable minRed : int = 0
    method minRed = minRed
    method set_minRed value' = minRed <- value'
    val mutable maxRed : int = 0
    method maxRed = maxRed
    method set_maxRed value' = maxRed <- value'
    val mutable minGreen : int = 0
    method minGreen = minGreen
    method set_minGreen value' = minGreen <- value'
    val mutable maxGreen : int = 0
    method maxGreen = maxGreen
    method set_maxGreen value' = maxGreen <- value'
    val mutable minBlue : int = 0
    method minBlue = minBlue
    method set_minBlue value' = minBlue <- value'
    val mutable maxBlue : int = 0
    method maxBlue = maxBlue
    method set_maxBlue value' = maxBlue <- value'
    
    

    method getMinRed () : int =
        begin
        minRed
        end
    

    method setMinRed ((minRed_arg : int)) : unit =
        begin
        minRed <- minRed_arg
        end
    

    method getMaxRed () : int =
        begin
        maxRed
        end
    

    method setMaxRed ((maxRed_arg : int)) : unit =
        begin
        maxRed <- maxRed_arg
        end
    

    method getMinGreen () : int =
        begin
        minGreen
        end
    

    method setMinGreen ((minGreen_arg : int)) : unit =
        begin
        minGreen <- minGreen_arg
        end
    

    method getMaxGreen () : int =
        begin
        maxGreen
        end
    

    method setMaxGreen ((maxGreen_arg : int)) : unit =
        begin
        maxGreen <- maxGreen_arg
        end
    

    method getMinBlue () : int =
        begin
        minBlue
        end
    

    method setMinBlue ((minBlue_arg : int)) : unit =
        begin
        minBlue <- minBlue_arg
        end
    

    method getMaxBlue () : int =
        begin
        maxBlue
        end
    

    method setMaxBlue ((maxBlue_arg : int)) : unit =
        begin
        maxBlue <- maxBlue_arg
        end
    

    method isInRange : 'any1. 'any1 -> bool = fun (color) ->
        let color = Obj.repr color in
        try
        begin
        if ((((((((Obj.magic color)#getRed ()) >= (self#getMinRed ())) && (((Obj.magic color)#getRed ()) <= (self#getMaxRed ()))) && (((Obj.magic color)#getGreen ()) >= (self#getMinGreen ()))) && (((Obj.magic color)#getGreen ()) <= (self#getMaxGreen ()))) && (((Obj.magic color)#getBlue ()) >= (self#getMinBlue ()))) && (((Obj.magic color)#getBlue ()) <= (self#getMaxBlue ()))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("getMinRed(): "));
        ignore (!stringBuffer#appendint ((self#getMinRed ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ("getMaxRed(): "));
        ignore (!stringBuffer#appendint ((self#getMaxRed ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ("getMinGreen(): "));
        ignore (!stringBuffer#appendint ((self#getMinGreen ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ("getMaxGreen(): "));
        ignore (!stringBuffer#appendint ((self#getMaxGreen ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ("getMinBlue(): "));
        ignore (!stringBuffer#appendint ((self#getMinGreen ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ("getMaxBlue(): "));
        ignore (!stringBuffer#appendint ((self#getMaxBlue ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        minRed <- 0;
        maxRed <- 0;
        minGreen <- 0;
        maxGreen <- 0;
        minBlue <- 0;
        maxBlue <- 0
      end
  end
let () = java_register_constructor "ColorRange" (fun arguments -> Obj.repr (new colorRange (Obj.obj arguments)))


