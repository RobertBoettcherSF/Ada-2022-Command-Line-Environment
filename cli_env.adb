pragma Ada_2022;

with Ada.Command_Line;
with Ada.Environment_Variables;

package body CLI_Env is

   function Argument_Count return Natural is
   begin
      return Ada.Command_Line.Argument_Count;
   end Argument_Count;

   function Argument (N : Positive) return String is
   begin
      return Ada.Command_Line.Argument (N);
   end Argument;

   function Command_Name return String is
   begin
      return Ada.Command_Line.Command_Name;
   end Command_Name;

   function Env_Exists (Name : String) return Boolean is
   begin
      return Ada.Environment_Variables.Exists (Name);
   end Env_Exists;

   function Env_Value (Name : String; Default : String := "") return String is
   begin
      if not Ada.Environment_Variables.Exists (Name) then
         return Default;
      end if;
      return Ada.Environment_Variables.Value (Name);
   end Env_Value;

   procedure Env_Set (Name, Value : String) is
   begin
      Ada.Environment_Variables.Set (Name, Value);
   end Env_Set;

   procedure Env_Clear (Name : String) is
   begin
      Ada.Environment_Variables.Clear (Name);
   end Env_Clear;

end CLI_Env;
