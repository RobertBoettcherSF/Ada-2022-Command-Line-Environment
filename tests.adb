pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with CLI_Env;

procedure Tests is
   Key : constant String := "ADA_2022_CLI_ENV_TEST_KEY";
begin
   Assert (CLI_Env.Command_Name'Length > 0);
   Put_Line ("PASS Command_Name non-empty");

   --  Argument_Count is whatever the test harness passed (often 0).
   Assert (CLI_Env.Argument_Count >= 0);
   Put_Line ("PASS Argument_Count readable (" &
             Natural'Image (CLI_Env.Argument_Count) & ")");

   CLI_Env.Env_Clear (Key);
   Assert (not CLI_Env.Env_Exists (Key));
   Assert (CLI_Env.Env_Value (Key, "missing") = "missing");

   CLI_Env.Env_Set (Key, "wave4");
   Assert (CLI_Env.Env_Exists (Key));
   Assert (CLI_Env.Env_Value (Key) = "wave4");

   CLI_Env.Env_Clear (Key);
   Assert (not CLI_Env.Env_Exists (Key));
   Put_Line ("PASS Environment_Variables Set/Value/Clear");

   Put_Line ("All Command Line & Environment topic tests passed.");
end Tests;
