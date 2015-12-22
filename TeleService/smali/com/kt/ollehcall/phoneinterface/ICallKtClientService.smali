.class public interface abstract Lcom/kt/ollehcall/phoneinterface/ICallKtClientService;
.super Ljava/lang/Object;
.source "ICallKtClientService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kt/ollehcall/phoneinterface/ICallKtClientService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isRejectCall(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startActivity(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopActivity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
