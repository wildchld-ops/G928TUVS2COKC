.class public Lcom/android/incallui/rcs/RcsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RcsBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 4

    sget-object v1, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createIntentFilter()"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.REBOOT_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.filetransfer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.filetransfer.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TRANSFERING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v15, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v12, -0x1

    const/4 v11, -0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v15, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/rcs/RcsShareUI;->isCshTopMostActivity(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "ultra_powersaving_mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    const-string v14, ""

    if-nez v5, :cond_1

    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "Intent.getExtras() returned with null."

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    const-string v15, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const v15, 0x7f0d036b

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    int-to-long v0, v6

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    :goto_0
    new-instance v8, Landroid/content/Intent;

    const-string v15, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN"

    const/16 v16, 0x0

    const-class v17, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v8, v15, v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    new-instance v7, Landroid/app/Notification;

    const v15, 0x7f020240

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v7, v15, v14, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v14, v15, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v15, 0x10

    iput v15, v7, Landroid/app/Notification;->flags:I

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_1
    if-eqz v5, :cond_2

    const-string v15, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v15, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    :cond_2
    const-string v15, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/content/Intent;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const v15, 0x7f0d036a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :cond_5
    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    const-string v15, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/content/Intent;)V

    goto :goto_2

    :cond_7
    const-string v15, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareIncoming sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_8
    const-string v15, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_PROGRESS"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareProgress : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_9
    const-string v15, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareInterrupted sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v15, v11}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    :cond_a
    const-string v15, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareCompleted sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_b
    const-string v15, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareCanceled sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v15, v11}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    :cond_c
    const-string v15, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareConnected sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_d
    const-string v15, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareTerminated sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v16, 0xb

    invoke-interface/range {v15 .. v16}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    :cond_e
    const-string v15, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    const-string v15, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    :cond_f
    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareIncoming sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/content/Intent;)V

    goto/16 :goto_2

    :cond_10
    const-string v15, "com.sec.rcs.mediatransfer.ish.notification.SHARE_PROGRESS"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareProgress : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_11
    const-string v15, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INTERRUPTED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareInterrupted sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v15, v11}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    :cond_12
    const-string v15, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareCompleted sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_13
    const-string v15, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    const-string v15, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    :cond_14
    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareCanceled sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " reason: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v15, v11}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    :cond_15
    const-string v15, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    const-string v15, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    :cond_16
    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareConnected sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_17
    const-string v15, "com.sec.rcs.mediatransfer.ish.notification.SHARE_TERMINATED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    sget-object v15, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onShareTerminated sessionId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v16, 0xb

    invoke-interface/range {v15 .. v16}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    :cond_18
    const-string v15, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    const-string v15, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v15, v4}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1a
    const-string v15, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b

    const-string v15, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleIncommingIMandFT(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1c
    const-string v15, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleCshInfo(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1d
    const-string v15, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v15, v4}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1e
    const-string v15, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v15, v4}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1f
    const-string v15, "com.samsung.rcs.intent.action.REBOOT_SHARING_SERVICE_DIALOG"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v15, v4}, Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public register(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mRegistered:Z

    invoke-static {}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->mRegistered:Z

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
