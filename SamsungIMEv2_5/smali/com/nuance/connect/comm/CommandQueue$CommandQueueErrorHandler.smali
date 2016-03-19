.class public interface abstract Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommandQueueErrorHandler"
.end annotation


# virtual methods
.method public abstract getDeviceCommand()Ljava/lang/String;
.end method

.method public abstract getDeviceFamily()Ljava/lang/String;
.end method

.method public abstract getSessionCommand()Ljava/lang/String;
.end method

.method public abstract getSessionFamily()Ljava/lang/String;
.end method

.method public abstract onAccountInvalidated()V
.end method

.method public abstract onDeviceInvalidated()V
.end method

.method public abstract onDeviceNotAvailable()V
.end method

.method public abstract onQueuePaused(IILjava/lang/String;)V
.end method

.method public abstract onSessionInvalidated()V
.end method

.method public abstract onSessionNotAvailable()V
.end method

.method public abstract onUnlicensed(I)V
.end method

.method public abstract onValidateDeviceProperties()V
.end method
