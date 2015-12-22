.class public Lcom/android/incallui/InCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "InCallQuickPanel.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmergencyMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallQuickPanel;->mEmergencyMode:Z

    return-void
.end method

.method private getAMRecordBaseTime()J
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private getQuickPanelDescription(I)Ljava/lang/String;
    .locals 4

    const v3, 0x7f0d02f4

    const v2, 0x7f0d0136

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "change_call_state_label"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d021a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0218

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const-string v1, "change_call_state_label"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0217

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRecordBaseTime()J
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getTTS(J)Ljava/lang/String;
    .locals 19

    const-wide/32 v14, 0x36ee80

    div-long v14, p1, v14

    long-to-int v6, v14

    const-wide/32 v14, 0x36ee80

    rem-long v14, p1, v14

    const-wide/32 v16, 0xea60

    div-long v14, v14, v16

    long-to-int v7, v14

    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    if-eqz v6, :cond_1

    const/4 v13, 0x1

    :goto_0
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%d"

    aput-object v15, v2, v14

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f0d01c6

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f0d01c7

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v13, :cond_0

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f0d01c5

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public initInCallQuickPanel(Landroid/content/Context;)V
    .locals 14

    iput-object p1, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN"

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v7, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.incallui.ACTION_CALL_MUTE"

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v7, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.incallui.ACTION_CALL_SPEAKER"

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.incallui.ACTION_CALL_ANSWER"

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v7, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.incallui.ACTION_CALL_RESUME"

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v7, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.incallui.ACTION_CALL_END"

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v7, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.incallui.ACTION_CALL_REJECT"

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v7, 0x7f1001ca

    invoke-virtual {p0, v7, v4}, Lcom/android/incallui/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f1001cb

    invoke-virtual {p0, v7, v4}, Lcom/android/incallui/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v7, "tablet_device"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f1001c6

    invoke-virtual {p0, v7, v4}, Lcom/android/incallui/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    const v7, 0x7f1001e1

    invoke-virtual {p0, v7, v5}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f1001e0

    invoke-virtual {p0, v7, v6}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f1001de

    invoke-virtual {p0, v7, v0}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f1001df

    invoke-virtual {p0, v7, v3}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f1001e3

    invoke-virtual {p0, v7, v1}, Lcom/android/incallui/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f1001e2

    invoke-virtual {p0, v7, v2}, Lcom/android/incallui/InCallQuickPanel;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 30

    const-string v2, "InCallQuickPanel"

    const-string v3, "updateInCallQuickPanel"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/4 v12, 0x2

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    :cond_0
    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- contentTitle = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- state = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    if-ne v13, v2, :cond_9

    const/16 v21, 0x1

    :goto_0
    const/16 v2, 0x8

    if-ne v12, v2, :cond_a

    const/16 v19, 0x1

    :goto_1
    const/4 v2, 0x3

    if-ne v13, v2, :cond_b

    const/16 v18, 0x1

    :goto_2
    const/4 v2, 0x6

    if-ne v13, v2, :cond_c

    const/16 v20, 0x1

    :goto_3
    const v3, 0x7f1001c8

    if-eqz v21, :cond_d

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "concept_usa_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "concept_usa_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "concept_usa_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "concept_canada_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_1
    const v2, 0x7f1001cd

    const v3, 0x7f020311

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setImageViewResource(II)V

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/InCallQuickPanel;->updateInCallQuickPanelButton(I)V

    if-nez v18, :cond_12

    const/16 v24, 0x1

    :goto_6
    const v3, 0x7f1001cf

    if-eqz v24, :cond_13

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f1001cf

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/incallui/InCallQuickPanel;->getQuickPanelDescription(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    move/from16 v23, v18

    const v3, 0x7f1001d0

    if-eqz v23, :cond_14

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v14

    const-wide/16 v2, -0x1

    cmp-long v2, p6, v2

    if-lez v2, :cond_15

    const v3, 0x7f1001d0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    const v2, 0x7f1001d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/incallui/InCallQuickPanel;->getTTS(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_9
    if-eqz p3, :cond_16

    if-nez p4, :cond_16

    const v2, 0x7f1001ca

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f1001ca

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallQuickPanel;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v2, 0x7f1001cb

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :goto_a
    if-eqz p5, :cond_2

    const v2, 0x7f1001ce

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static/range {p5 .. p5}, Lcom/android/incallui/InCallUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f1001ce

    invoke-static/range {p5 .. p5}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_2
    :goto_b
    const/16 v26, 0x0

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallQuickPanel;->getRecordBaseTime()J

    move-result-wide v8

    if-eqz v18, :cond_18

    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_18

    const/16 v26, 0x1

    const v2, 0x7f1001d8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v7, 0x7f1001dc

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    :cond_3
    :goto_c
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v18, :cond_4

    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Showing AM recording in Status Bar = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallQuickPanel;->getAMRecordBaseTime()J

    move-result-wide v8

    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_19

    const/16 v26, 0x1

    const v2, 0x7f1001d8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v7, 0x7f1001dc

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    :cond_4
    :goto_d
    if-eqz v18, :cond_1a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSwisMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v27, 0x1

    :goto_e
    if-eqz v18, :cond_1b

    if-eqz v19, :cond_1b

    if-nez v26, :cond_1b

    const/16 v25, 0x1

    :goto_f
    const v3, 0x7f1001d4

    if-nez v27, :cond_5

    if-eqz v25, :cond_1c

    :cond_5
    const/4 v2, 0x0

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v3, 0x7f1001d6

    if-eqz v27, :cond_1d

    const/4 v2, 0x0

    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v27, :cond_1e

    const v2, 0x7f1001d7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d0190

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_6
    :goto_12
    if-eqz v18, :cond_1f

    if-eqz v23, :cond_1f

    if-nez v25, :cond_1f

    const/16 v28, 0x1

    :goto_13
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v22

    check-cast v22, Lcom/android/incallui/SecInCallActivity;

    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    instance-of v2, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_7

    if-eqz v28, :cond_20

    invoke-virtual/range {v22 .. v22}, Lcom/android/incallui/SecInCallActivity;->isForegroundActivity()Z

    move-result v2

    if-nez v2, :cond_20

    const/16 v28, 0x1

    :cond_7
    :goto_14
    const v3, 0x7f1001d1

    if-eqz v28, :cond_21

    const/4 v2, 0x0

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    :cond_8
    return-void

    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_d
    const/16 v2, 0x8

    goto/16 :goto_4

    :cond_e
    const v2, 0x7f1001cd

    const v3, 0x7f020310

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_5

    :cond_f
    if-eqz v21, :cond_10

    const v2, 0x7f1001cd

    const v3, 0x7f020303

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_5

    :cond_10
    const-string v2, "display_hd_icon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_11

    const v2, 0x7f1001cd

    const v3, 0x7f020305

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_5

    :cond_11
    const v2, 0x7f1001cd

    const v3, 0x7f020302

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_5

    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_6

    :cond_13
    const/16 v2, 0x8

    goto/16 :goto_7

    :cond_14
    const/16 v2, 0x8

    goto/16 :goto_8

    :cond_15
    const v3, 0x7f1001d0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_9

    :cond_16
    const v2, 0x7f1001ca

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f1001cb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f1001cb

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_17
    const v2, 0x7f1001ce

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_18
    const v2, 0x7f1001d8

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v7, 0x7f1001dc

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_c

    :cond_19
    const v2, 0x7f1001d8

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v7, 0x7f1001dc

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_d

    :cond_1a
    const/16 v27, 0x0

    goto/16 :goto_e

    :cond_1b
    const/16 v25, 0x0

    goto/16 :goto_f

    :cond_1c
    const/16 v2, 0x8

    goto/16 :goto_10

    :cond_1d
    const/16 v2, 0x8

    goto/16 :goto_11

    :cond_1e
    if-eqz v25, :cond_6

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0340

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const v2, 0x7f1001d7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_1f
    const/16 v28, 0x0

    goto/16 :goto_13

    :cond_20
    const/16 v28, 0x0

    goto/16 :goto_14

    :cond_21
    const/16 v2, 0x8

    goto/16 :goto_15
.end method

.method public updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    iput-boolean p8, p0, Lcom/android/incallui/InCallQuickPanel;->mEmergencyMode:Z

    invoke-virtual/range {p0 .. p7}, Lcom/android/incallui/InCallQuickPanel;->updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public updateInCallQuickPanelButton(I)V
    .locals 12

    const-string v10, "InCallQuickPanel"

    const-string v11, "updateInCallQuickPanelButton"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    const/16 v10, 0x8

    if-ne p1, v10, :cond_4

    const/4 v3, 0x1

    :goto_0
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v5

    const v11, 0x7f1001de

    if-eqz v5, :cond_5

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {p0, v11, v10}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v8

    const v11, 0x7f1001e2

    if-eqz v8, :cond_6

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {p0, v11, v10}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    if-nez v8, :cond_7

    const/4 v6, 0x1

    :goto_3
    const v11, 0x7f1001e3

    if-eqz v6, :cond_8

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {p0, v11, v10}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const v11, 0x7f1001df

    if-eqz v3, :cond_9

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {p0, v11, v10}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    iget-boolean v10, p0, Lcom/android/incallui/InCallQuickPanel;->mEmergencyMode:Z

    if-nez v10, :cond_a

    const/4 v7, 0x1

    :goto_6
    const/16 v10, 0x10

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v0, :cond_1

    const-string v10, "suppor_mute_button_in_easy_mode"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v7, 0x0

    :cond_1
    const v11, 0x7f1001e1

    if-eqz v7, :cond_b

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {p0, v11, v10}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v10

    if-eqz v10, :cond_c

    const v10, 0x7f1001e1

    const v11, 0x7f020307

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallQuickPanel;->setImageViewResource(II)V

    const v10, 0x7f1001e1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/incallui/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_8
    if-nez v3, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v10

    if-nez v10, :cond_e

    if-nez v1, :cond_e

    const/4 v9, 0x1

    :goto_9
    const-string v10, "tablet_device"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "no_receiver_in_call"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x0

    :cond_2
    const/16 v10, 0x8

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x0

    :cond_3
    const v11, 0x7f1001e0

    if-eqz v9, :cond_f

    const/4 v10, 0x0

    :goto_a
    invoke-virtual {p0, v11, v10}, Lcom/android/incallui/InCallQuickPanel;->setViewVisibility(II)V

    const/16 v10, 0x8

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v11

    if-ne v10, v11, :cond_10

    const/4 v4, 0x1

    :goto_b
    const v11, 0x7f1001e0

    if-eqz v4, :cond_11

    const v10, 0x7f02030e

    :goto_c
    invoke-virtual {p0, v11, v10}, Lcom/android/incallui/InCallQuickPanel;->setImageViewResource(II)V

    return-void

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v10, 0x8

    goto/16 :goto_1

    :cond_6
    const/16 v10, 0x8

    goto/16 :goto_2

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_8
    const/16 v10, 0x8

    goto/16 :goto_4

    :cond_9
    const/16 v10, 0x8

    goto/16 :goto_5

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_b
    const/16 v10, 0x8

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v2

    const v11, 0x7f1001e1

    if-eqz v2, :cond_d

    const v10, 0x7f020309

    :goto_d
    invoke-virtual {p0, v11, v10}, Lcom/android/incallui/InCallQuickPanel;->setImageViewResource(II)V

    goto :goto_8

    :cond_d
    const v10, 0x7f020308

    goto :goto_d

    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    const/16 v10, 0x8

    goto :goto_a

    :cond_10
    const/4 v4, 0x0

    goto :goto_b

    :cond_11
    const v10, 0x7f02030d

    goto :goto_c
.end method
