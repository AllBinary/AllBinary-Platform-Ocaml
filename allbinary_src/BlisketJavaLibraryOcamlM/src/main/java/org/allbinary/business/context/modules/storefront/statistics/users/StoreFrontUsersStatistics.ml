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
(* package org.allbinary.business.context.modules.storefront.statistics.users *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.data.tables.user.UserEntityFactory *)
(* import org.allbinary.data.tables.user.UserEntityInterface *)
(* import org.allbinary.logic.StdUtil *)

class storeFrontUsersStatistics ((_storeFrontInterface : StoreFrontInterface.storeFrontInterface)) =
  object (self)
    val mutable totalNumberOfUsers : int = (Obj.magic 0)
    method totalNumberOfUsers = totalNumberOfUsers
    method set_totalNumberOfUsers value' = totalNumberOfUsers <- value'
    val mutable totalUsersByRoleHashMap : java_hash_map = (Obj.magic 0)
    method totalUsersByRoleHashMap = totalUsersByRoleHashMap
    method set_totalUsersByRoleHashMap value' = totalUsersByRoleHashMap <- value'
    
    

    method getNewTotal : 'any1. 'any1 -> int = fun (userRole) ->
        let userRole = Obj.repr userRole in
        begin
        let numberOfUsersForRoleLong : int ref = ref ((Obj.magic (totalUsersByRoleHashMap#get ((Obj.magic userRole))))) in ();
        if (!numberOfUsersForRoleLong == (Obj.magic 0)) then begin
            numberOfUsersForRoleLong := (Obj.obj (java_new "Long" (Obj.repr (0))))
        end;
        (Obj.obj (java_new "Long" (Obj.repr ((!numberOfUsersForRoleLong + 1)))))
        end [@@warning "-20"]
    

    method getNumberOfUsers () : int =
        begin
        totalNumberOfUsers
        end
    

    method getNumberOfUsersByRole ((role : string)) : int =
        begin
        let totalForRole : int ref = ref ((Obj.magic (totalUsersByRoleHashMap#get (role)))) in ();
        !totalForRole
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((StoreFrontUsersStatisticsData.getInstance ())#nUMBEROFUSERS, (java_string_of (Obj.repr (self#getNumberOfUsers ())))));
        let setOfUserRoles : Obj.t ref = ref ((Obj.repr (totalUsersByRoleHashMap#keySet ()))) in ();
        let nextUserRole : UserRole.userRole ref = ref (((Obj.magic 0) :> UserRole.userRole)) in ();
        let userRoleArray : Obj.t array ref = ref (((Obj.magic !setOfUserRoles)#toArray ())) in ();
        let size : int ref = ref ((Array.length !userRoleArray)) in ();
        for index = 0 to !size - 1 do
            nextUserRole := (Obj.magic !userRoleArray.(index));
            let totalForRole : int ref = ref ((Obj.magic (totalUsersByRoleHashMap#get (!nextUserRole)))) in ();
            ignore (!hashMap#put ((java_string_of (Obj.repr !nextUserRole)), (string_of_int !totalForRole)))
        done;
        (!hashMap :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic 0)))
        end

    initializer
      begin
        ();
        ();
        ();
        totalUsersByRoleHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        let userEntityInterface : UserEntityInterface.userEntityInterface ref = ref (((UserEntityFactory.getInstance ()) :> UserEntityInterface.userEntityInterface)) in ();
        let userVector : BasicArrayList.basicArrayList ref = ref (((!userEntityInterface#getCustomers ()) :> BasicArrayList.basicArrayList)) in ();
        totalNumberOfUsers <- (Obj.obj (java_new "Long" (Obj.repr ((!userVector#size ())))));
        let size : int ref = ref ((!userVector#size ())) in ();
        for index = 0 to !size - 1 do
            let userInterface : UserInterface.userInterface ref = ref (((Obj.magic (!userVector#get (index))) :> UserInterface.userInterface)) in ();
            let nextUserRole : UserRole.userRole ref = ref (((!userInterface#getRole ()) :> UserRole.userRole)) in ();
            let currentNumberOfUsersForRole : int ref = ref ((self#getNewTotal (!nextUserRole))) in ();
            ignore (totalUsersByRoleHashMap#put (!nextUserRole, !currentNumberOfUsersForRole))
        done
      end
  end
let () = java_register_constructor "StoreFrontUsersStatistics" (fun arguments -> Obj.repr (new storeFrontUsersStatistics (Obj.obj arguments)))


