.class public interface abstract Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener;
.super Ljava/lang/Object;
.source "IBinderGetNumMarkListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetSpamNumInfoComplete(Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetSpamNumInfoFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
