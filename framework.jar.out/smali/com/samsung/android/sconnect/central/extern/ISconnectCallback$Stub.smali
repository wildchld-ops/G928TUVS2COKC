.class public abstract Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;
.super Landroid/os/Binder;
.source "ISconnectCallback.java"

# interfaces
.implements Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sconnect.central.extern.ISconnectCallback"

.field static final TRANSACTION_onDeviceAdded:I = 0x1

.field static final TRANSACTION_onDeviceChanged:I = 0x3

.field static final TRANSACTION_onDeviceRemoved:I = 0x2

.field static final TRANSACTION_onDiscoveryFinished:I = 0x5

.field static final TRANSACTION_onDiscoveryStarted:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.sconnect.central.extern.ISconnectCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.sconnect.central.extern.ISconnectCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.samsung.android.sconnect.central.extern.ISconnectCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :sswitch_1
    const-string v0, "com.samsung.android.sconnect.central.extern.ISconnectCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->onDeviceAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_2
    const-string v0, "com.samsung.android.sconnect.central.extern.ISconnectCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->onDeviceRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_3
    const-string v0, "com.samsung.android.sconnect.central.extern.ISconnectCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->onDeviceChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_4
    const-string v0, "com.samsung.android.sconnect.central.extern.ISconnectCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->onDiscoveryStarted()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_5
    const-string v0, "com.samsung.android.sconnect.central.extern.ISconnectCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->onDiscoveryFinished()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
