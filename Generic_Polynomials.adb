package body Generic_Polynomials is
   function Create return Polynomial is
      result: Polynomial;
   begin
      --FIXME: add implementation
      return result;
   end Create;

   function Create (source: Polynomial) return Polynomial is
      result: Polynomial;
   begin
      return result;
   end Create;

   procedure Destroy(self: Polynomial) is
   begin
      null;
   end Destroy;

   procedure Print(self: Polynomial) is
   begin
      null;
   end Print;

   procedure Input(self: Polynomial) is
   begin
      null;
   end Input;

   function Minus(self: Polynomial) return Polynomial is
      result: Polynomial;
   begin
      return result;
   end Minus;

   procedure Append(self, subject: Polynomial) is
   begin
      null;
   end Append;

   procedure Reduse(self, subject: Polynomial) is
   begin
      null;
   end Reduse;

   function Plus(self, subject: Polynomial) return Polynomial is
      result: Polynomial;
   begin
      return result;
   end Plus;

   function Substract(self, subject: Polynomial) return Polynomial is
      result: Polynomial;
   begin
      return result;
   end Substract;

   function Multiply(self, subject: Polynomial) return Polynomial is
      result: Polynomial;
   begin
      return result;
   end Multiply;

end Generic_Polynomials;
