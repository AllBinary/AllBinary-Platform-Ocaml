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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class colorAverage () =
  object (self)
    val mutable avgRed : float = 0.0
    method avgRed = avgRed
    method set_avgRed value' = avgRed <- value'
    val mutable avgGreen : float = 0.0
    method avgGreen = avgGreen
    method set_avgGreen value' = avgGreen <- value'
    val mutable avgBlue : float = 0.0
    method avgBlue = avgBlue
    method set_avgBlue value' = avgBlue <- value'
    
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("getAvgRed(): "));
        ignore (!stringBuffer#appendfloat ((self#getAvgRed ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ("getAvgRed(): "));
        ignore (!stringBuffer#appendfloat ((self#getAvgRed ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append ("getAvgGreen(): "));
        ignore (!stringBuffer#appendfloat ((self#getAvgGreen ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getAvgRed () : float =
        begin
        avgRed
        end
    

    method setAvgRed ((avgRed_arg : float)) : unit =
        begin
        avgRed <- avgRed_arg
        end
    

    method getAvgGreen () : float =
        begin
        avgGreen
        end
    

    method setAvgGreen ((avgGreen_arg : float)) : unit =
        begin
        avgGreen <- avgGreen_arg
        end
    

    method getAvgBlue () : float =
        begin
        avgBlue
        end
    

    method setAvgBlue ((avgBlue_arg : float)) : unit =
        begin
        avgBlue <- avgBlue_arg
        end

    initializer
      begin
        avgRed <- 0.0;
        avgGreen <- 0.0;
        avgBlue <- 0.0;
        ();
        (self#setAvgRed (0));
        (self#setAvgGreen (0));
        (self#setAvgBlue (0))
      end
  end
let () = java_register_constructor "ColorAverage" (fun arguments -> Obj.repr (new colorAverage (Obj.obj arguments)))


