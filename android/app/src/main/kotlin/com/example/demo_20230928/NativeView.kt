package com.example.demo_20230928

import android.content.Context
import android.graphics.Color
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import io.flutter.plugin.platform.PlatformView

internal class NativeView(context: Context, id: Int, creationParams: Map<String?, Any?>?) :
        PlatformView {
    private val textView: TextView

    override fun getView(): View {
        return textView
    }

    override fun dispose() {}

    init {
        textView = TextView(context)
        textView.layoutParams = ViewGroup.LayoutParams(100, 100)
        textView.textSize = 24f
        textView.setBackgroundColor(Color.rgb(7, 91, 154))
        textView.text = "NativeView"
    }
}
