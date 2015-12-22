.class public interface abstract Lcom/android/phone/ISSInfoServiceCallback;
.super Ljava/lang/Object;
.source "ISSInfoServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ISSInfoServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSSInfoReceived(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
