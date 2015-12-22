.class public Lcom/android/incallui/secservice/SecVTStackStateListener;
.super Ljava/lang/Object;
.source "SecVTStackStateListener.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secservice/SecVTStackStateListener$1;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SecVTStackStateListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside VTStackStateListener: onStateChanged State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/secservice/SecVTStackStateListener;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    sget-object v1, Lcom/android/incallui/secservice/SecVTStackStateListener$1;->$SwitchMap$siso$vt$VTManager$VTEventForUI:[I

    invoke-virtual {p1}, Lsiso/vt/VTManager$VTEventForUI;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0xc9

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xca

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xcb

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xcc

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaDeInitCS()V

    const/16 v0, 0xcd

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopVTCall()V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->cleanupCall()V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xd0

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xd1

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xd4

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xd5

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xd2

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(I)V

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xd2

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x191

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x192

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x193

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto/16 :goto_0

    :pswitch_10
    const/16 v0, 0x194

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto/16 :goto_0

    :pswitch_11
    const/16 v0, 0x194

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto/16 :goto_0

    :pswitch_12
    const/16 v0, 0x1f5

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_13
    const/16 v0, 0x1f6

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_14
    const/16 v0, 0x1f7

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_15
    const/16 v0, 0x1f8

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_16
    const/16 v0, 0x259

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_17
    const/16 v0, 0x25a

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_18
    const/16 v0, 0x25b

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_19
    const/16 v0, 0x25c

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1a
    const/16 v0, 0x25d

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1b
    const/16 v0, 0x25e

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1c
    const/16 v0, 0x25f

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1d
    const/16 v0, 0x260

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCastingEvent(I)V

    goto/16 :goto_0

    :pswitch_1e
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCameraEvent(I)V

    goto/16 :goto_0

    :pswitch_1f
    const/16 v0, 0x66

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCameraEvent(I)V

    goto/16 :goto_0

    :pswitch_20
    const/16 v0, 0x67

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCameraEvent(I)V

    goto/16 :goto_0

    :pswitch_21
    const/16 v0, 0x68

    iget-object v1, p0, Lcom/android/incallui/secservice/SecVTStackStateListener;->mSecVideoCallManager:Lcom/android/incallui/secservice/SecVideoCallManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->notifyCameraEvent(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
