import { WebPlugin } from '@capacitor/core';

import type { CapacitorIdBridgePlugin } from './definitions';

export class CapacitorIdBridgeWeb
  extends WebPlugin
  implements CapacitorIdBridgePlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
