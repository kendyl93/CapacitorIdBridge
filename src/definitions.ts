export interface CapacitorIdBridgePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
