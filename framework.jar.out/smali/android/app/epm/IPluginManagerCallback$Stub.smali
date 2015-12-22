.class public abstract Landroid/app/epm/IPluginManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IPluginManagerCallback.java"

# interfaces
.implements Landroid/app/epm/IPluginManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/epm/IPluginManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/epm/IPluginManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.epm.IPluginManagerCallback"

.field static final TRANSACTION_onInstallCompleted:I = 0x2

.field static final TRANSACTION_onInstallProgress:I = 0x1

.field static final TRANSACTION_onStateChangeCompleted:I = 0x6

.field static final TRANSACTION_onStateChangeProgress:I = 0x5

.field static final TRANSACTION_onUninstallCompleted:I = 0x4

.field static final TRANSACTION_onUninstallProgress:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.epm.IPluginManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/epm/IPluginManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/epm/IPluginManagerCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.epm.IPluginManagerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/epm/IPluginManagerCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/epm/IPluginManagerCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/epm/IPluginManagerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/epm/IPluginManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "android.app.epm.IPluginManagerCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "android.app.epm.IPluginManagerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/epm/IPluginManagerCallback$Stub;->onInstallProgress(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_2
    const-string v4, "android.app.epm.IPluginManagerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/epm/IPluginManagerCallback$Stub;->onInstallCompleted(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    const-string v4, "android.app.epm.IPluginManagerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/epm/IPluginManagerCallback$Stub;->onUninstallProgress(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_4
    const-string v4, "android.app.epm.IPluginManagerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/epm/IPluginManagerCallback$Stub;->onUninstallCompleted(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_5
    const-string v4, "android.app.epm.IPluginManagerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/epm/IPluginManagerCallback$Stub;->onStateChangeProgress(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_6
    const-string v4, "android.app.epm.IPluginManagerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/epm/IPluginManagerCallback$Stub;->onStateChangeCompleted(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
