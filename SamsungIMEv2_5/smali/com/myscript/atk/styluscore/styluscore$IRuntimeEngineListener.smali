.class public interface abstract Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;
.super Ljava/lang/Object;
.source "styluscore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myscript/atk/styluscore/styluscore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRuntimeEngineListener"
.end annotation


# virtual methods
.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getDate()J
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getInstanceData()[B
.end method

.method public abstract getLastSuccessfulConnexionDate()J
.end method

.method public abstract getLicenceData()[B
.end method

.method public abstract init([B)V
.end method

.method public abstract requestLicenceData(Ljava/lang/String;I)[B
.end method

.method public abstract reset([B)V
.end method

.method public abstract storeInstanceData([B)V
.end method

.method public abstract storeLastSuccessfulConnexionDate()V
.end method

.method public abstract storeLicenceData([B)V
.end method
