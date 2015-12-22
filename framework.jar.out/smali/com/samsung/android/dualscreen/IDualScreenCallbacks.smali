.class public interface abstract Lcom/samsung/android/dualscreen/IDualScreenCallbacks;
.super Ljava/lang/Object;
.source "IDualScreenCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dualscreen/IDualScreenCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract screenFocusChanged(Lcom/samsung/android/dualscreen/DualScreen;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
