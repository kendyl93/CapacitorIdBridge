import { registerPlugin } from '@capacitor/core';

import type { CapacitorIdBridgePlugin } from './definitions';

const CapacitorIdBridge = registerPlugin<CapacitorIdBridgePlugin>(
  'CapacitorIdBridge',
  {
    web: () => import('./web').then(m => new m.CapacitorIdBridgeWeb()),
  },
);

export * from './definitions';
export { CapacitorIdBridge };
