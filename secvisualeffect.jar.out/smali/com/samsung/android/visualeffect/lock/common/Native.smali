.class public Lcom/samsung/android/visualeffect/lock/common/Native;
.super Ljava/lang/Object;
.source "Native.java"


# instance fields
.field private mEffectId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "stlport"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "secveSrkCommon"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/common/Native;->mEffectId:J

    return-void
.end method

.method public static native pauseAnimation()V
.end method

.method public static native resumeAnimation()V
.end method


# virtual methods
.method public native clear()V
.end method

.method public native destroy()V
.end method

.method public native draw()Z
.end method

.method public native drawBgOnly(II)V
.end method

.method public native init(IIZ)V
.end method

.method public native loadEffect(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public native loadModel(Ljava/lang/String;[B)V
.end method

.method public native loadTexture(Ljava/lang/String;[III)V
.end method

.method public native onTouch(III)V
.end method

.method public native setParameters([I[F)V
.end method

.method public native showAffordance(II)V
.end method

.method public native showUnlock()V
.end method
