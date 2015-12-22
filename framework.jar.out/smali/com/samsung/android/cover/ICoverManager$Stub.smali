.class public abstract Lcom/samsung/android/cover/ICoverManager$Stub;
.super Landroid/os/Binder;
.source "ICoverManager.java"

# interfaces
.implements Lcom/samsung/android/cover/ICoverManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ICoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cover.ICoverManager"

.field static final TRANSACTION_disableCoverManager:I = 0x9

.field static final TRANSACTION_getCoverState:I = 0x7

.field static final TRANSACTION_getCoverStateForExternal:I = 0x10

.field static final TRANSACTION_getVersion:I = 0xa

.field static final TRANSACTION_isCoverManagerDisabled:I = 0x8

.field static final TRANSACTION_notifyCoverAttachStateChanged:I = 0x5

.field static final TRANSACTION_notifyCoverSwitchStateChanged:I = 0x4

.field static final TRANSACTION_notifySmartCoverAttachStateChanged:I = 0x6

.field static final TRANSACTION_onCoverAppCovered:I = 0xd

.field static final TRANSACTION_readTouchChannelCountForExternal:I = 0x11

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerListenerCallback:I = 0x2

.field static final TRANSACTION_registerListenerCallbackForExternal:I = 0xe

.field static final TRANSACTION_sendDataToCover:I = 0xb

.field static final TRANSACTION_sendPowerKeyToCover:I = 0xc

.field static final TRANSACTION_sendTouchRegionForExternal:I = 0x12

.field static final TRANSACTION_setCoverPackage:I = 0x13

.field static final TRANSACTION_unregisterCallback:I = 0x3

.field static final TRANSACTION_unregisterCallbackForExternal:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.cover.ICoverManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cover/ICoverManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/cover/ICoverManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_3
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v2, v6

    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->notifyCoverSwitchStateChanged(JZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_3

    :sswitch_5
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v2, v6

    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->notifyCoverAttachStateChanged(JZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    move v2, v5

    goto :goto_4

    :sswitch_6
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v2, v6

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cover/CoverState;

    :goto_6
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_5
    move v2, v5

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    :sswitch_7
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_7

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v6}, Lcom/samsung/android/cover/CoverState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->isCoverManagerDisabled()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v0, v6

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_9
    move v0, v5

    goto :goto_7

    :sswitch_a
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getVersion()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendDataToCover(I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendPowerKeyToCover()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    move v0, v6

    :goto_8
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->onCoverAppCovered(Z)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v0, v5

    goto :goto_8

    :sswitch_e
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    goto :goto_9

    :sswitch_f
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->unregisterCallbackForExternal(Landroid/os/IBinder;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_d

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v6}, Lcom/samsung/android/cover/CoverState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v7, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;->readTouchChannelCountForExternal()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_e

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->sendTouchRegionForExternal([BII)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_13
    const-string v5, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->setCoverPackage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
