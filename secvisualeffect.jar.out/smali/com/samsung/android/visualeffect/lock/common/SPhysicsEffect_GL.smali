.class public Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;
.super Landroid/opengl/GLSurfaceView;
.source "SPhysicsEffect_GL.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$VFXContextFactory;
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

.field protected veContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->showUnlockAffordance(FF)V

    return-void
.end method

.method private changeBackground(Landroid/graphics/Bitmap;I)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeBackground Mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    move v1, p2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-interface {v2}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->getDrawCount()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->changeBackground(Landroid/graphics/Bitmap;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$3;-><init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->changeBackground(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->getRenderMode()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->setRenderMode(I)V

    goto :goto_0
.end method

.method private screenTurnedOff()V
    .locals 1

    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$5;-><init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private screenTurnedOn()V
    .locals 1

    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$4;-><init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showUnlockAffordance(FF)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->TAG:Ljava/lang/String;

    const-string v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->getDrawCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->TAG:Ljava/lang/String;

    const-string v1, "no delay call queueEventForAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$7;-><init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;FF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->TAG:Ljava/lang/String;

    const-string v1, "postDelayed call showUnlockAffordance(100)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$8;-><init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;FF)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private unlockEffect()V
    .locals 1

    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$6;-><init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 1

    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$2;-><init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected detectOpenGLES20()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->veContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public handleCustomEvent(ILjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v2, "Bitmap"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const-string v3, "Mode"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->changeBackground(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :sswitch_1
    const-string v2, "Rect"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->showUnlockAffordance(FF)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->screenTurnedOn()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->screenTurnedOff()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->unlockEffect()V

    goto :goto_0

    :sswitch_5
    const-string v2, "CustomEvent"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "SensorEvent"

    if-ne v0, v2, :cond_1

    const-string v2, "EventObject"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorEvent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    :cond_1
    const-string v2, "ForceDirty"

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->setRenderMode(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x63 -> :sswitch_5
    .end sparse-switch
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL$1;-><init>(Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 0

    return-void
.end method

.method protected onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/SPhysicsEffect_GL;->mIRenderer:Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/lock/common/ISPhysicsRenderer;->show()V

    return-void
.end method

.method public removeListener()V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 0

    return-void
.end method
