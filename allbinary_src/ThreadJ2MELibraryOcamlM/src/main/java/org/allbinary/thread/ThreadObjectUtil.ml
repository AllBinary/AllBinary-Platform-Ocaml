(* Generated Code Do Not Modify *)
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)

class threadObjectUtil () =
  object
    val mutable nULL_PRIORITY_RUNNABLE : PriorityRunnable.priorityRunnable = (Obj.magic 0)
    method nULL_PRIORITY_RUNNABLE = nULL_PRIORITY_RUNNABLE
    method set_nULL_PRIORITY_RUNNABLE value' = nULL_PRIORITY_RUNNABLE <- value'
    

    method notifyObject : 'any1. 'any1 -> unit = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ignore ()
        end
    

    method waitObject : 'any1. 'any1 -> unit = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ignore ()
        end
    

    method waitObjectFor : 'any1. 'any1 * int -> unit = fun (anyType, (delay : int)) ->
        let anyType = Obj.repr anyType in
        begin
        ignore ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#waitFor (anyType, delay))
        end
    

    method processThread ((runnable : java_runnable)) : unit =
        begin
        let thread : java_thread ref = ref (((Obj.obj (java_new "Thread" (Obj.repr (runnable)))) :> java_thread)) in ();
        ignore (!thread#start ())
        end

    initializer
      begin
        nULL_PRIORITY_RUNNABLE <- ((new NullPriorityRunnable.nullPriorityRunnable ()) :> PriorityRunnable.priorityRunnable);
        ()
      end
  end
let () = java_register_constructor "ThreadObjectUtil" (fun arguments -> Obj.repr (new threadObjectUtil (Obj.obj arguments)))

let instance = (new threadObjectUtil ())
let get_instance () = instance
let () = java_register_static "ThreadObjectUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ThreadObjectUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


