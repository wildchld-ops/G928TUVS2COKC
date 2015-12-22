.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_changeLidState:I = 0xf

.field static final TRANSACTION_dismiss:I = 0x5

.field static final TRANSACTION_doKeyguardTimeout:I = 0xc

.field static final TRANSACTION_getScreenOrientation:I = 0x17

.field static final TRANSACTION_keyguardDone:I = 0x4

.field static final TRANSACTION_onActivityDrawn:I = 0x11

.field static final TRANSACTION_onBootCompleted:I = 0xe

.field static final TRANSACTION_onDreamingStarted:I = 0x6

.field static final TRANSACTION_onDreamingStopped:I = 0x7

.field static final TRANSACTION_onScreenTurnedOff:I = 0x8

.field static final TRANSACTION_onScreenTurnedOn:I = 0x9

.field static final TRANSACTION_onSystemReady:I = 0xb

.field static final TRANSACTION_removeAdaptiveEvent:I = 0x13

.field static final TRANSACTION_setAdaptiveEvent:I = 0x12

.field static final TRANSACTION_setBendedPendingIntent:I = 0x15

.field static final TRANSACTION_setBendedPendingIntentInSecure:I = 0x16

.field static final TRANSACTION_setCurrentUser:I = 0xd

.field static final TRANSACTION_setKeyguardEnabled:I = 0xa

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x10

.field static final TRANSACTION_updateAdaptiveEvent:I = 0x14

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v0, v6

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(Z)V

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_1

    :sswitch_2
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    goto :goto_0

    :sswitch_3
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    goto :goto_0

    :sswitch_4
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v2, v6

    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->keyguardDone(ZZ)V

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_2

    :cond_2
    move v2, v7

    goto :goto_3

    :sswitch_5
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss()V

    goto :goto_0

    :sswitch_6
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    goto :goto_0

    :sswitch_7
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    goto :goto_0

    :sswitch_8
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff(I)V

    goto :goto_0

    :sswitch_9
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardShowCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v0, v6

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v7

    goto :goto_4

    :sswitch_b
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    goto/16 :goto_0

    :sswitch_c
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :sswitch_d
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    goto/16 :goto_0

    :sswitch_f
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v0, v6

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->changeLidState(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v7

    goto :goto_6

    :sswitch_10
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    goto/16 :goto_0

    :sswitch_11
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onActivityDrawn()V

    goto/16 :goto_0

    :sswitch_12
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    :goto_8
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/policy/IKeyguardService$Stub;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    :sswitch_13
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->removeAdaptiveEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    :goto_a
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/policy/IKeyguardService$Stub;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    :sswitch_15
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    :goto_c
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    :sswitch_16
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    :goto_e
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    :sswitch_17
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e

    move v0, v6

    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->getScreenOrientation(Z)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_e
    move v0, v7

    goto :goto_f

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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
