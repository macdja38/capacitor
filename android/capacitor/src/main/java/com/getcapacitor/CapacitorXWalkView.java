package com.getcapacitor;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;

import org.xwalk.core.XWalkView;

public class CapacitorXWalkView extends XWalkView {
    public CapacitorXWalkView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getKeyCode() == KeyEvent.KEYCODE_BACK) {
            return false; // Do not let Crosswalk handle the Back button!
        }
        return super.dispatchKeyEvent(event);
    }
}
