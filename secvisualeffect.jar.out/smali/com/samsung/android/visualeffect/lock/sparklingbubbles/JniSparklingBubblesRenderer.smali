.class public Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;
.super Ljava/lang/Object;
.source "JniSparklingBubblesRenderer.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/lock/common/ISPhysicsJniRenderer;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mNativeJNI:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SparklingBubblesEffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    const-string v0, "JniSparklingBubblesRenderer"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->TAG:Ljava/lang/String;

    const-string v1, "JniSparklingBubblesRenderer is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native native_DeInit_JNI(J)V
.end method

.method private static native native_Draw_PhysicsEngine(J)V
.end method

.method private static native native_Init_JNI()J
.end method

.method private static native native_Init_PhysicsEngine(JIIII)V
.end method

.method private static native native_SetTexture(JLjava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method private static native native_SetTextureColor(JLjava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method private static native native_isEmpty(J)I
.end method

.method private static native native_onCustomEvent(JIF)V
.end method

.method private static native native_onCustomEventVec(JIFFF)V
.end method

.method private static native native_onKeyEvent(JI)V
.end method

.method private static native native_onSensorEvent(JIFFF)V
.end method

.method private static native native_onSurfaceChangedEvent(JII)V
.end method

.method private static native native_onTouchEvent(JIII[I[I)V
.end method


# virtual methods
.method public DeInit_PhysicsEngineJNI()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_DeInit_JNI(J)V

    return-void
.end method

.method public Draw_PhysicsEngine()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_Draw_PhysicsEngine(J)V

    return-void
.end method

.method public Init_PhysicsEngine(IIII)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_Init_PhysicsEngine(JIIII)V

    return-void
.end method

.method public Init_PhysicsEngineJNI()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->TAG:Ljava/lang/String;

    const-string v1, "native_Init_JNI is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_Init_JNI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    return-void
.end method

.method public SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->TAG:Ljava/lang/String;

    const-string v1, "SetBitmapData "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_SetTexture(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public SetTextureColor(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->TAG:Ljava/lang/String;

    const-string v1, "SetBitmapData "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_SetTextureColor(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public isEmpty()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_isEmpty(J)I

    move-result v0

    return v0
.end method

.method public onCustomEvent(IF)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_onCustomEvent(JIF)V

    return-void
.end method

.method public onCustomEvent(IFFF)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_onCustomEventVec(JIFFF)V

    return-void
.end method

.method public onKeyEvent(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_onKeyEvent(JI)V

    return-void
.end method

.method public onSensorEvent(IFFF)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_onSensorEvent(JIFFF)V

    return-void
.end method

.method public onSurfaceChangedEvent(II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_onSurfaceChangedEvent(JII)V

    return-void
.end method

.method public onTouchEvent(III[I[I)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->mNativeJNI:J

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/JniSparklingBubblesRenderer;->native_onTouchEvent(JIII[I[I)V

    return-void
.end method
