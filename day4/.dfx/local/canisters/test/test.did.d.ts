import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export type List = [] | [[bigint, List]];
export interface _SERVICE {
  'is_anonymous' : ActorMethod<[], boolean>,
  'testBuffer' : ActorMethod<[], [] | [bigint]>,
  'testList' : ActorMethod<[], List>,
}
