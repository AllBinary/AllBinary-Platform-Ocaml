(* Generated Code Do Not Modify *)
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.SynchObject *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.ABSystemWrapper *)

class layerManager (layerManagerLogging_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable systemWrapper : ABSystemWrapper.aBSystemWrapper = (Obj.magic 0)
    method systemWrapper = systemWrapper
    method set_systemWrapper value' = systemWrapper <- value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable layerManagerLogging : Obj.t = Obj.repr 0
    method layerManagerLogging : 'r. 'r = Obj.magic layerManagerLogging
    method set_layerManagerLogging : 'v. 'v -> unit = fun value' -> layerManagerLogging <- Obj.repr value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable anyType : SynchObject.synchObject = (Obj.magic 0)
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    
    

    method contains : 'any1. 'any1 -> bool = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        (list#contains ((Obj.magic layerInterface)))
        end [@@warning "-20"]
    

    method update : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        let had : bool ref = ref ((list#remove ((Obj.magic layerInterface)))) in ();
        if !had then begin
            let nextLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic 0) :> AllBinaryLayer.allBinaryLayer)) in ();
            let size : int ref = ref ((list#size ())) in ();
            for index = 0 to !size - 1 do
                nextLayerInterface := (Obj.magic (list#get (index)));
                if (((Obj.magic layerInterface)#getZP ()) > (!nextLayerInterface#getZP ())) then begin
                    ignore (list#addAt (index, (Obj.magic layerInterface)));
                    raise (Java_return (Obj.repr (())))
                end
            done;
            ignore (list#add ((Obj.magic layerInterface)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method insert : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        let nextLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic 0) :> AllBinaryLayer.allBinaryLayer)) in ();
        let size : int ref = ref ((list#size ())) in ();
        for index = 0 to !size - 1 do
            nextLayerInterface := (Obj.magic (list#get (index)));
            if (((Obj.magic layerInterface)#getZP ()) > (!nextLayerInterface#getZP ())) then begin
                (self#appendAt ((Obj.magic layerInterface), index));
                raise (Java_return (Obj.repr (())))
            end
        done;
        (self#append ((Obj.magic layerInterface)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method append : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore ((Obj.magic layerManagerLogging)#append ((Obj.magic layerInterface)));
        ignore (list#add ((Obj.magic layerInterface)))
        end [@@warning "-20"]
    

    method appendAt : 'any1. 'any1 * int -> unit = fun (layerInterface, (index : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore ((Obj.magic layerManagerLogging)#appendAt ((Obj.magic layerInterface), index));
        ignore (list#addAt (index, (Obj.magic layerInterface)))
        end [@@warning "-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        begin (* synchronized *)
            ignore ((Obj.magic layerManagerLogging)#remove ((Obj.magic layerInterface)));
            let result : bool ref = ref ((list#remove ((Obj.magic layerInterface)))) in ();
            ignore ((Obj.magic layerManagerLogging)#removeResult (self, (Obj.magic layerInterface), !result))
        end
        end [@@warning "-20"]
    

    method getLayerAt : 'return. int -> 'return = fun ((index : int)) ->
        begin
        (Obj.magic ((Obj.magic list#objectArray.(index))))
        end
    

    method getSize () : int =
        begin
        (list#size ())
        end
    

    method cleanup () : unit =
        begin
        begin (* synchronized *)
            ignore (list#clear ());
            ignore ((Obj.magic layerManagerLogging)#clear ());
            ignore ((Obj.magic tsUtil)#gc ());
            ignore ((Obj.magic tsUtil)#gc ())
        end
        end
    

    method paint : 'any1. 'any1 * int * int -> unit = fun (g, (_x : int), (_y : int)) ->
        let g = Obj.repr g in
        begin
        begin (* synchronized *)
            let comp : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let index : int ref = ref ((list#size ())) in ();
            while ((index := !index - 1; !index) >= 0) do
                comp := Obj.repr ((Obj.magic list#objectArray.(!index)));
                if (((Obj.magic !comp) != (Obj.magic 0)) && ((Obj.magic !comp)#isVisible ())) then begin
                    ignore ((Obj.magic !comp)#paint ((Obj.magic g)))
                end
            done
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        systemWrapper <- ((ABSystemWrapper.getInstance ()) :> ABSystemWrapper.aBSystemWrapper);
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        ();
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        anyType <- ((new SynchObject.synchObject ()) :> SynchObject.synchObject);
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        layerManagerLogging <- Obj.repr (layerManagerLogging_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "LayerManager" (fun arguments -> Obj.repr (new layerManager (Obj.obj arguments)))


