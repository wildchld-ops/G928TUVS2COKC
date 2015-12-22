.class public interface abstract Lcom/samsung/android/visualeffect/IEffectView;
.super Ljava/lang/Object;
.source "IEffectView.java"


# virtual methods
.method public abstract clearScreen()V
.end method

.method public abstract handleCustomEvent(ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
.end method

.method public abstract init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
.end method

.method public abstract reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V
.end method

.method public abstract removeListener()V
.end method

.method public abstract setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
.end method
