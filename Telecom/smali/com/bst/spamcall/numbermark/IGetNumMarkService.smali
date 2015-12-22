.class public interface abstract Lcom/bst/spamcall/numbermark/IGetNumMarkService;
.super Ljava/lang/Object;
.source "IGetNumMarkService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/spamcall/numbermark/IGetNumMarkService$Stub;
    }
.end annotation


# virtual methods
.method public abstract CancleReport(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetNumberInfo(Ljava/lang/String;ILcom/bst/spamcall/numbermark/IBinderGetNumMarkListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReportNumber(Lcom/bst/spamcall/numbermark/BinderReportNumInfo;Lcom/bst/spamcall/numbermark/IBinderReportNumListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
