generic
   type TCoefficient is digits <>;
package Generic_CoefficientContainer is
   type ICoefficientContainer is abstract tagged private;
       function GetByIndex(self: ICoefficientContainer; index: integer) return TCoefficient is abstract;
       procedure SetByIndex(self: ICoefficientContainer; index: integer; value: TCoefficient) is abstract;
       function GetMaxIndex(self: ICoefficientContainer) return integer is abstract;
       procedure Clear(self: ICoefficientContainer) is abstract;

   type ArrayBasedCoefficientContainer is private;
private
   type ICoefficientContainer is abstract tagged null record;
   type CoefficientArray is array (0 .. 9) of TCoefficient;--FIXME: replace with dinamic array
   type ArrayBasedCoefficientContainer is new ICoefficientContainer with
      record
         mas: CoefficientArray;
      end record;
   function GetByIndex(self: ArrayBasedCoefficientContainer; index: integer) return TCoefficient;
   procedure SetByIndex(self: ArrayBasedCoefficientContainer; index: integer; value: TCoefficient);
   function GetMaxIndex(self: ArrayBasedCoefficientContainer) return integer;
   procedure Clear(self: ArrayBasedCoefficientContainer);

   function Create return ArrayBasedCoefficientContainer;
   procedure Destroy(self: ArrayBasedCoefficientContainer);

end Generic_CoefficientContainer;
