(* Generated Code Do Not Modify *)
(* package org.allbinary.time *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.ThreadObjectUtil *)

class stupidTimer () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable nullUtil : NullUtil.nullUtil = (Obj.magic 0)
    method nullUtil = nullUtil
    method set_nullUtil value' = nullUtil <- value'
    val mutable threadObjectUtil : ThreadObjectUtil.threadObjectUtil = (Obj.magic 0)
    method threadObjectUtil = threadObjectUtil
    method set_threadObjectUtil value' = threadObjectUtil <- value'
    

    method visitBool : 'any1. 'any1 -> bool = fun (visitorInterface) ->
        let visitorInterface = Obj.repr visitorInterface in
        begin
        let result : bool ref = ref ((Obj.magic ((Obj.magic visitorInterface)#visit (nullUtil#nULL_OBJECT)))) in ();
        let result2 : bool ref = ref (!result) in ();
        !result2
        end [@@warning "-20"]
    

    method visit : 'any1 'any2. 'any1 * 'any2 -> unit = fun (visitorInterface, timeDelayHelper) ->
        let visitorInterface = Obj.repr visitorInterface in
        let timeDelayHelper = Obj.repr timeDelayHelper in
        begin
        let tookTooLong : bool ref = ref (false) in ();
        let wAITING_FOR : string ref = ref ("Waiting for: ") in ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!wAITING_FOR))#append (((StringUtil.getInstance ())#toString ((Obj.magic visitorInterface))))))), self, commonStrings#vISIT))));
        let index : int ref = ref (0) in ();
        while (self#visitBool ((Obj.magic visitorInterface))) do
            if ((!index mod 10) = 0) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!wAITING_FOR))#appendint (!index)))), self, commonStrings#vISIT))))
            end;
            index := !index + 1;
            begin (* synchronized *)
                ignore (threadObjectUtil#waitObjectFor (self, 1800))
            end;
            if ((Obj.magic timeDelayHelper)#isTimeTNT ()) then begin
                tookTooLong := true;
                raise Java_break
            end
        done;
        if !tookTooLong then begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#vISIT, (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Took Too Long: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic visitorInterface)))))))))))
        end else begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (Obj.magic timeDelayHelper))), self, commonStrings#vISIT))))
        end
        end [@@warning "-20"]
    

    method stopWaiting () : unit =
        begin
        begin (* synchronized *)
            ignore (threadObjectUtil#notifyObject (self))
        end
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        nullUtil <- ((NullUtil.getInstance ()) :> NullUtil.nullUtil);
        threadObjectUtil <- ((ThreadObjectUtil.getInstance ()) :> ThreadObjectUtil.threadObjectUtil);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "StupidTimer" (fun arguments -> Obj.repr (new stupidTimer (Obj.obj arguments)))


