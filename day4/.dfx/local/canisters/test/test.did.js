export const idlFactory = ({ IDL }) => {
  const List = IDL.Rec();
  List.fill(IDL.Opt(IDL.Tuple(IDL.Nat, List)));
  return IDL.Service({
    'is_anonymous' : IDL.Func([], [IDL.Bool], []),
    'testBuffer' : IDL.Func([], [IDL.Opt(IDL.Nat)], ['query']),
    'testList' : IDL.Func([], [List], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
