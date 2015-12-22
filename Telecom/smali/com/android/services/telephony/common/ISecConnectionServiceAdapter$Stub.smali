.class public abstract Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "ISecConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/SecCallExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/SecCallExtra;

    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V

    if-eqz v0, :cond_1

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v6}, Lcom/android/services/telephony/common/SecCallExtra;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v6}, Lcom/android/services/telephony/common/SecCallExtra;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v2, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/android/services/telephony/common/SecCallExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/SecCallExtra;

    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->updateSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V

    if-eqz v0, :cond_4

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v6}, Lcom/android/services/telephony/common/SecCallExtra;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onModifyCall(Ljava/lang/String;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->answerRingingCallInUI()V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v6

    :cond_6
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onPostDialPause(Ljava/lang/String;CZ)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onPostDialPauseComplete(Ljava/lang/String;C)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->acceptCall()V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->rejectCall()V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->hangupFgCall()V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->hangupBgCall()V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v6

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->holdCalls(Z)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->swapCalls()V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v6

    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setOtherPartyHold(Z)V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v1, v6

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setMute(Z)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->getMute()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    move v1, v6

    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v6

    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->turnOnSpeaker(Z)V

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->isSpeakerOn()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    move v1, v6

    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v1, v6

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->turnOnBluetooth(Z)V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->saveParticipantLog(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->saveModifiedCallLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onEpdgStateChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->isLowBatt()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    move v1, v6

    :cond_e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->silence()V

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->restartRingingOrCallWaiting()V

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->selectSimForEmergency(I)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setEcholocateCallState(ILandroid/net/Uri;II)V

    if-eqz v0, :cond_10

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
