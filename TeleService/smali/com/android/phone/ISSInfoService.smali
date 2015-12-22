.class public interface abstract Lcom/android/phone/ISSInfoService;
.super Ljava/lang/Object;
.source "ISSInfoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ISSInfoService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/phone/ISSInfoServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSSInfo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/android/phone/ISSInfoServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
