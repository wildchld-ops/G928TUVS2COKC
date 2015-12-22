.class public abstract Lcom/bst/spamcall/numbermark/IGetNumMarkService$Stub;
.super Landroid/os/Binder;
.source "IGetNumMarkService.java"

# interfaces
.implements Lcom/bst/spamcall/numbermark/IGetNumMarkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bst/spamcall/numbermark/IGetNumMarkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/spamcall/numbermark/IGetNumMarkService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/bst/spamcall/numbermark/IGetNumMarkService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.bst.spamcall.numbermark.IGetNumMarkService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bst/spamcall/numbermark/IGetNumMarkService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/bst/spamcall/numbermark/IGetNumMarkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v0, "com.bst.spamcall.numbermark.IGetNumMarkService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.bst.spamcall.numbermark.IGetNumMarkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/bst/spamcall/numbermark/IGetNumMarkService$Stub;->GetNumberInfo(Ljava/lang/String;ILcom/bst/spamcall/numbermark/IBinderGetNumMarkListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.bst.spamcall.numbermark.IGetNumMarkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bst/spamcall/numbermark/IBinderReportNumListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bst/spamcall/numbermark/IBinderReportNumListener;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/bst/spamcall/numbermark/IGetNumMarkService$Stub;->ReportNumber(Lcom/bst/spamcall/numbermark/BinderReportNumInfo;Lcom/bst/spamcall/numbermark/IBinderReportNumListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v0, "com.bst.spamcall.numbermark.IGetNumMarkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bst/spamcall/numbermark/IGetNumMarkService$Stub;->CancleReport(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
