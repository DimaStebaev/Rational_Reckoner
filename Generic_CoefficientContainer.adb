with Generic_CoefficientContainer;
package body Generic_CoefficientContainer is
   function GetByIndex(self: ArrayBasedCoefficientContainer; index: integer) return TCoefficient is
      var: TCoefficient;
   begin
      --FIXME: add implementaion.
      return var;
   end GetByIndex;

   procedure SetByIndex(self: ArrayBasedCoefficientContainer; index: integer; value: TCoefficient) is
   begin
      --FIXME: add implementaion.
      null;
   end SetByIndex;

   function GetMaxIndex(self: ArrayBasedCoefficientContainer) return integer is
   begin
      --FIXME: add implementaion.
      return 0;
   end GetMaxIndex;

   procedure Clear(self: ArrayBasedCoefficientContainer) is
   begin
      null;--FIXME: add implementaion.
   end Clear;
end Generic_CoefficientContainer;
