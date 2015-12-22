.class public interface abstract Lcom/bst/spamcall/numbermark/IBinderReportNumListener;
.super Ljava/lang/Object;
.source "IBinderReportNumListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/spamcall/numbermark/IBinderReportNumListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReportNumberComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReportNumberFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
