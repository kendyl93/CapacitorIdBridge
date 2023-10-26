package com.pawelstanecki.capacitor.id.bridge;

import android.util.Log;

public class CapacitorIdBridge {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
