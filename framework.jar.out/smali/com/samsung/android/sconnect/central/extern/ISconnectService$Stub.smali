.class public abstract Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;
.super Landroid/os/Binder;
.source "ISconnectService.java"

# interfaces
.implements Lcom/samsung/android/sconnect/central/extern/ISconnectService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sconnect/central/extern/ISconnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sconnect.central.extern.ISconnectService"

.field static final TRANSACTION_notifyShareVia:I = 0x7

.field static final TRANSACTION_refreshDiscovery:I = 0x1

.field static final TRANSACTION_refreshDiscoveryWithUri:I = 0x2

.field static final TRANSACTION_registerCallback:I = 0x4

.field static final TRANSACTION_sendFile:I = 0x6

.field static final TRANSACTION_stopDiscovery:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->refreshDiscovery()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->refreshDiscoveryWithUri([Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->stopDiscovery()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->registerCallback(Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->unregisterCallback(Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->sendFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string v5, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->notifyShareVia(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
