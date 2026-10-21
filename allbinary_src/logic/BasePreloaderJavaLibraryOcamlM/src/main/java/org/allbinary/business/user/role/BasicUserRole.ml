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
(* package org.allbinary.business.user.role *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.Serializable *)

class basicUserRole ((aRole : string), (aDisplayValue : string), (a_int_RoleId : int), (aSessionTimeout : int), (aSessionInactivityTimeout : int)) =
  object (self)
    val mutable m_int_RoleId : int = 0
    method m_int_RoleId = m_int_RoleId
    method set_m_int_RoleId value' = m_int_RoleId <- value'
    val mutable role : string = ""
    method role = role
    method set_role value' = role <- value'
    val mutable displayValue : string = ""
    method displayValue = displayValue
    method set_displayValue value' = displayValue <- value'
    val mutable sessionTimeout : int = 0
    method sessionTimeout = sessionTimeout
    method set_sessionTimeout value' = sessionTimeout <- value'
    val mutable sessionInactivityTimeout : int = 0
    method sessionInactivityTimeout = sessionInactivityTimeout
    method set_sessionInactivityTimeout value' = sessionInactivityTimeout <- value'
    
    
    

    method getRoleId () : int =
        begin
        m_int_RoleId
        end
    

    method getRole () : string =
        begin
        role
        end
    

    method getSessionTimeout () : int =
        begin
        sessionTimeout
        end
    

    method getSessionInactivityTimeout () : int =
        begin
        sessionInactivityTimeout
        end
    

    method equals : 'any1. 'any1 -> bool = fun (basicUserRole) ->
        let basicUserRole = Obj.repr basicUserRole in
        try
        begin
        if ((self#getRoleId ()) = ((Obj.magic basicUserRole)#getRoleId ())) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method toString () : string =
        begin
        (self#getRole ())
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        m_int_RoleId <- a_int_RoleId;
        role <- aRole;
        displayValue <- aDisplayValue;
        sessionTimeout <- aSessionTimeout;
        sessionInactivityTimeout <- aSessionInactivityTimeout;
        ignore ((BasicUserRoles.getInstance ())#roleVector#add (self))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicUserRole" (fun arguments -> Obj.repr (new basicUserRole (Obj.obj arguments)))
let new_basicUserRole_4 ((aRole : string), (a_int_RoleId : int), (aSessionTimeout : int), (aSessionInactivityTimeout : int)) = new basicUserRole (aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
let () = java_register_constructor "BasicUserRole:4" (fun arguments -> Obj.repr (new_basicUserRole_4 (Obj.obj arguments)))


