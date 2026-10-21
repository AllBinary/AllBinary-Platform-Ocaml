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
(* package org.allbinary.game.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

class artificialIntelligenceInterfaceFactoryInterfaceFactory () =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    

    method clear () : unit =
        begin
        list <- (new BasicArrayListD.basicArrayListD ())
        end
    

    method getInstanceFromCollection : 'any1. 'any1 -> ArtificialIntelligenceInterfaceFactoryInterface.artificialIntelligenceInterfaceFactoryInterface = fun (hashtable) ->
        let hashtable = Obj.repr hashtable in
        begin
        let typeInteger : int ref = ref ((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic (BasicAI.get_iD ())))))) in ();
        let type_ : int ref = ref (!typeInteger) in ();
        let artificialIntelligenceInterfaceFactoryInterface : ArtificialIntelligenceInterfaceFactoryInterface.artificialIntelligenceInterfaceFactoryInterface ref = ref (((Obj.magic list#objectArray.((!type_ - 1))) :> ArtificialIntelligenceInterfaceFactoryInterface.artificialIntelligenceInterfaceFactoryInterface)) in ();
        (!artificialIntelligenceInterfaceFactoryInterface :> ArtificialIntelligenceInterfaceFactoryInterface.artificialIntelligenceInterfaceFactoryInterface)
        end [@@warning "-20"]
    

    method add : 'any1. 'any1 -> unit = fun (artificialIntelligenceInterfaceFactoryInterface) ->
        let artificialIntelligenceInterfaceFactoryInterface = Obj.repr artificialIntelligenceInterfaceFactoryInterface in
        begin
        ignore (list#add ((Obj.magic artificialIntelligenceInterfaceFactoryInterface)))
        end [@@warning "-20"]

    initializer
      begin
        list <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "ArtificialIntelligenceInterfaceFactoryInterfaceFactory" (fun arguments -> Obj.repr (new artificialIntelligenceInterfaceFactoryInterfaceFactory (Obj.obj arguments)))

let sINGLETON = ref ((new artificialIntelligenceInterfaceFactoryInterfaceFactory ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "ArtificialIntelligenceInterfaceFactoryInterfaceFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end
let () = java_register_static "ArtificialIntelligenceInterfaceFactoryInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


