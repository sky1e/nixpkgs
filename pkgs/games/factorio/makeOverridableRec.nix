outerBlock: 
let
  overrideFunction = innerBlock: overrides: (
    let
      innerApplied = innerBlock overrideEvaluated;
      overrideEvaluated = innerApplied // (overrides innerApplied) // {
        override = overrideFunction (self: (innerBlock self) // (overrides (innerBlock self)));
      };
    in
      overrideEvaluated );
  evaluated = outerBlock evaluated;
in evaluated // { override = overrideFunction outerBlock; }
