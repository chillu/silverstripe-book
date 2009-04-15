<?php
class PositiveNumericField extends NumericField {
   function jsValidation() {
      return '';
   }
   function validate($validator){
      if($this->value && !is_numeric($this->value)){
          $validator->validationError(
             $this->name,
            'Nur Zahlen erlaubt',
            "validation"
         );
         return false;
      } else if($this->value && $this->value < 0){
          $validator->validationError(
             $this->name,
            'Nur positive Werte erlaubt',
            "validation"
         );
         return false;
      } else{
         return true;
      }
   }
}
?>