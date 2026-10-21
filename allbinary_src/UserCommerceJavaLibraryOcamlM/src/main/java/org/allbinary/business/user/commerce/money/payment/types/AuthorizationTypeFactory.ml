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
(* package org.allbinary.business.user.commerce.money.payment.types *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class authorizationTypeFactory () =
  object
    val mutable nONE : AuthorizationType.authorizationType = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable vOICE : AuthorizationType.authorizationType = (Obj.magic 0)
    method vOICE = vOICE
    method set_vOICE value' = vOICE <- value'
    val mutable rETINAL : AuthorizationType.authorizationType = (Obj.magic 0)
    method rETINAL = rETINAL
    method set_rETINAL value' = rETINAL <- value'
    val mutable iMAGE : AuthorizationType.authorizationType = (Obj.magic 0)
    method iMAGE = iMAGE
    method set_iMAGE value' = iMAGE <- value'
    val mutable dNA : AuthorizationType.authorizationType = (Obj.magic 0)
    method dNA = dNA
    method set_dNA value' = dNA <- value'
    val mutable pRINT : AuthorizationType.authorizationType = (Obj.magic 0)
    method pRINT = pRINT
    method set_pRINT value' = pRINT <- value'
    val mutable cHIP : AuthorizationType.authorizationType = (Obj.magic 0)
    method cHIP = cHIP
    method set_cHIP value' = cHIP <- value'

    initializer
      begin
        nONE <- ((new AuthorizationType.authorizationType ("None")) :> AuthorizationType.authorizationType);
        vOICE <- ((new AuthorizationType.authorizationType ("Voice")) :> AuthorizationType.authorizationType);
        rETINAL <- ((new AuthorizationType.authorizationType ("Retinal")) :> AuthorizationType.authorizationType);
        iMAGE <- ((new AuthorizationType.authorizationType ("Image")) :> AuthorizationType.authorizationType);
        dNA <- ((new AuthorizationType.authorizationType ("DNA")) :> AuthorizationType.authorizationType);
        pRINT <- ((new AuthorizationType.authorizationType ("Print")) :> AuthorizationType.authorizationType);
        cHIP <- ((new AuthorizationType.authorizationType ("Chip")) :> AuthorizationType.authorizationType);
        ()
      end
  end
let () = java_register_constructor "AuthorizationTypeFactory" (fun arguments -> Obj.repr (new authorizationTypeFactory (Obj.obj arguments)))

let instance = (new authorizationTypeFactory ())
let get_instance () = instance
let () = java_register_static "AuthorizationTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AuthorizationTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


