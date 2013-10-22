with Generic_CoefficientContainer;
generic
   type TCoefficient is digits <>;
package Generic_Polynomials is
   type Polynomial is private;

   function Create return Polynomial;
   function Create (source: Polynomial) return Polynomial;
   procedure Destroy(self: Polynomial);

   procedure Print(self: Polynomial);
   procedure Input(self: Polynomial);

   function Minus(self: Polynomial) return Polynomial;
   procedure Append(self, subject: Polynomial);
   procedure Reduse(self, subject: Polynomial);
   function Plus(self, subject: Polynomial) return Polynomial;
   function Substract(self, subject: Polynomial) return Polynomial;
   function Multiply(self, subject: Polynomial) return Polynomial;

private
   package CoefficientContainers is new Generic_CoefficientContainer(TCoefficient);
   type CoefficientContainer_pointer is access CoefficientContainers.ICoefficientContainer;
   type Polynomial is tagged
      record
         Coefficients: CoefficientContainer_pointer;
      end record;
end Generic_Polynomials;
