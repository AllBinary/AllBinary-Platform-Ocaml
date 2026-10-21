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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.DataInputStream *)
(* import java.io.EOFException *)
(* import java.io.IOException *)
(* import javax.microedition.rms.RecordComparator *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class scoreComparator ((isHighestBest_arg : bool)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable isHighestBest : bool = false
    method isHighestBest = isHighestBest
    method set_isHighestBest value' = isHighestBest <- value'
    
    

    method getBestScore () : int =
        begin
        (if isHighestBest then max_int else 0)
        end
    

    method compare ((recordOne : int array), (recordTwo : int array)) : int =
        try
        begin
        let byteArrayInputStreamOne : Obj.t ref = ref ((Obj.repr (new ByteArrayInputStream.byteArrayInputStream (recordOne)))) in ();
        let inputStreamOne : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataInputStream" (Obj.repr ((Obj.magic !byteArrayInputStreamOne))))))) in ();
        let byteArrayInputStreamTwo : Obj.t ref = ref ((Obj.repr (new ByteArrayInputStream.byteArrayInputStream (recordTwo)))) in ();
        let inputStreamTwo : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataInputStream" (Obj.repr ((Obj.magic !byteArrayInputStreamTwo))))))) in ();
        let scoreOne : int ref = ref (0) in ();
        let scoreTwo : int ref = ref (0) in ();
        (try
            ignore ((Obj.magic !inputStreamOne)#readUTF ());
            ignore ((Obj.magic !inputStreamTwo)#readUTF ());
            scoreOne := ((Obj.magic !inputStreamOne)#readLong ());
            scoreTwo := ((Obj.magic !inputStreamTwo)#readLong ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "compare", e))
        end);
        if isHighestBest then begin
            raise (Java_return (Obj.repr ((self#getHighTooLow (!scoreOne, !scoreTwo)))))
        end else begin
            raise (Java_return (Obj.repr ((self#getLowTooHigh (!scoreOne, !scoreTwo)))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getHighTooLow ((scoreOne : int), (scoreTwo : int)) : int =
        try
        begin
        if (scoreOne > scoreTwo) then begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "RecordComparator.get_pRECEDES" (Obj.repr ()))))))
        end else if (scoreOne < scoreTwo) then begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "RecordComparator.get_fOLLOWS" (Obj.repr ()))))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "RecordComparator.get_eQUIVALENT" (Obj.repr ()))))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getLowTooHigh ((scoreOne : int), (scoreTwo : int)) : int =
        try
        begin
        if (scoreOne < scoreTwo) then begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "RecordComparator.get_pRECEDES" (Obj.repr ()))))))
        end else if (scoreOne > scoreTwo) then begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "RecordComparator.get_fOLLOWS" (Obj.repr ()))))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "RecordComparator.get_eQUIVALENT" (Obj.repr ()))))))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        isHighestBest <- isHighestBest_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ScoreComparator" (fun arguments -> Obj.repr (new scoreComparator (Obj.obj arguments)))


