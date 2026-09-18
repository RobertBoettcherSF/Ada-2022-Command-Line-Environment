--  Ada 2022 topic: Ada.Command_Line and Ada.Environment_Variables.
pragma Ada_2022;

package CLI_Env is

   function Argument_Count return Natural;
   function Argument (N : Positive) return String
     with Pre => N <= Argument_Count;

   function Command_Name return String;

   function Env_Exists (Name : String) return Boolean;
   function Env_Value (Name : String; Default : String := "") return String;
   --  Returns Default when unset.

   procedure Env_Set (Name, Value : String);
   procedure Env_Clear (Name : String);

end CLI_Env;
