.class public abstract Landroid/os/ICustomFrequencyManager$Stub;
.super Landroid/os/Binder;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICustomFrequencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICustomFrequencyManager"

.field static final TRANSACTION_acquireDVFSLock:I = 0x1b

.field static final TRANSACTION_acquireGovernorParameter:I = 0x35

.field static final TRANSACTION_acquirePersistentDVFSLock:I = 0x1d

.field static final TRANSACTION_checkCPUBoostRange:I = 0x19

.field static final TRANSACTION_checkFrameRateRange:I = 0xa

.field static final TRANSACTION_checkGPUFrequencyRange:I = 0x2

.field static final TRANSACTION_checkSysBusFrequencyRange:I = 0x6

.field static final TRANSACTION_deleteBatteryStatsDatabase:I = 0x29

.field static final TRANSACTION_disableCPUCState:I = 0x13

.field static final TRANSACTION_disableHotplugDisable:I = 0x18

.field static final TRANSACTION_disableLegacyScheduler:I = 0x16

.field static final TRANSACTION_enableCPUCState:I = 0x14

.field static final TRANSACTION_enableHotplugDisable:I = 0x17

.field static final TRANSACTION_enableLegacyScheduler:I = 0x15

.field static final TRANSACTION_getAbusiveAppList:I = 0x2d

.field static final TRANSACTION_getBatteryDeltaSum:I = 0x2a

.field static final TRANSACTION_getBatteryRemainingUsageTime:I = 0x27

.field static final TRANSACTION_getBatteryStatistics:I = 0x28

.field static final TRANSACTION_getBatteryTotalCapacity:I = 0x2b

.field static final TRANSACTION_getDvfsPolicyByHint:I = 0x2e

.field static final TRANSACTION_getFrequentlyUsedAppListByLocation:I = 0x33

.field static final TRANSACTION_getGameThrottlingLevel:I = 0x31

.field static final TRANSACTION_getLeastRecentlyUsedAppList:I = 0x34

.field static final TRANSACTION_getSavedTimeAfterKillingApp:I = 0x2c

.field static final TRANSACTION_getStandbyTimeInPowerSavingMode:I = 0x25

.field static final TRANSACTION_getStandbyTimeInUltraPowerSavingMode:I = 0x24

.field static final TRANSACTION_getSupportedCPUCoreNum:I = 0x10

.field static final TRANSACTION_getSupportedCPUFrequency:I = 0x1a

.field static final TRANSACTION_getSupportedGPUFrequency:I = 0x1

.field static final TRANSACTION_getSupportedLCDFrequency:I = 0x9

.field static final TRANSACTION_getSupportedSysBusFrequency:I = 0x5

.field static final TRANSACTION_mpdUpdate:I = 0xf

.field static final TRANSACTION_notifyWmAniationState:I = 0x21

.field static final TRANSACTION_releaseCPUCore:I = 0x12

.field static final TRANSACTION_releaseDVFSLock:I = 0x1c

.field static final TRANSACTION_releaseGPU:I = 0x4

.field static final TRANSACTION_releaseGovernorParameter:I = 0x36

.field static final TRANSACTION_releasePersistentDVFSLock:I = 0x1e

.field static final TRANSACTION_releaseSysBus:I = 0x8

.field static final TRANSACTION_requestCPUCore:I = 0x11

.field static final TRANSACTION_requestCPUUpdate:I = 0xe

.field static final TRANSACTION_requestGPU:I = 0x3

.field static final TRANSACTION_requestLCDFrameRate:I = 0xb

.field static final TRANSACTION_requestMMCBurstRate:I = 0x1f

.field static final TRANSACTION_requestMpParameterUpdate:I = 0xd

.field static final TRANSACTION_requestSysBus:I = 0x7

.field static final TRANSACTION_restoreLCDFrameRate:I = 0xc

.field static final TRANSACTION_restoreMMCBurstRate:I = 0x20

.field static final TRANSACTION_reviewPackage:I = 0x23

.field static final TRANSACTION_sendCommandToSSRM:I = 0x22

.field static final TRANSACTION_setGameFps:I = 0x30

.field static final TRANSACTION_setGamePowerSaving:I = 0x2f

.field static final TRANSACTION_setGameTurboMode:I = 0x32

.field static final TRANSACTION_setHglPolicy:I = 0x26


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/ICustomFrequencyManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/ICustomFrequencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedGPUFrequency()[I

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :sswitch_2
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkGPUFrequencyRange(I)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_0

    move v1, v7

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedSysBusFrequency()[I

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :sswitch_6
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkSysBusFrequencyRange(I)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1

    move v1, v7

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedLCDFrequency()[I

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkFrameRateRange(I)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_2

    move v1, v7

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestMpParameterUpdate(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUUpdate(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->mpdUpdate(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedCPUCoreNum()[I

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enableLegacyScheduler(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disableLegacyScheduler(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enableHotplugDisable(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disableHotplugDisable(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_19
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkCPUBoostRange(I)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3

    move v1, v7

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedCPUFrequency()[I

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->acquirePersistentDVFSLock(IIILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->releasePersistentDVFSLock(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->restoreMMCBurstRate(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_21
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    move v4, v7

    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/ICustomFrequencyManager$Stub;->notifyWmAniationState(JZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    move v4, v1

    goto :goto_1

    :sswitch_22
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getStandbyTimeInPowerSavingMode()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setHglPolicy(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryRemainingUsageTime(I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryStatistics(I)[B

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :sswitch_29
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->deleteBatteryStatsDatabase()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_5

    move v1, v7

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryDeltaSum(I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryTotalCapacity()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getSavedTimeAfterKillingApp(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getAbusiveAppList()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2e
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_6

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, p3, v7}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2f
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    move v2, v7

    :goto_2
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGamePowerSaving(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_7
    move v2, v1

    goto :goto_2

    :sswitch_30
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameFps(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_31
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getGameThrottlingLevel()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_32
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    move v2, v7

    :goto_3
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTurboMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_8
    move v2, v1

    goto :goto_3

    :sswitch_33
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager$Stub;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_34
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getLeastRecentlyUsedAppList(I)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_35
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    :goto_4
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->acquireGovernorParameter(Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_36
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->releaseGovernorParameter()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
