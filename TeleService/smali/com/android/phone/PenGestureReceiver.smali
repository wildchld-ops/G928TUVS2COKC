.class public Lcom/android/phone/PenGestureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PenGestureReceiver.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isInCallTopActivity(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v5, "PenGestureReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInCallTopActivity()... topActivity.getClassName() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.incallui.InCallActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "PenGestureReceiver"

    const-string v5, "InCallActivity is the Top activity"

    invoke-static {v4, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-eqz v24, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    const-string v24, "PenGestureReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onReceive action "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    const-string v24, "com.samsung.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "com.samsung.pen.INSERT"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "com.samsung.intent.spengesture.DOUBLE_TAB"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "com.samsung.phone.MEMO_OPEN"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.sec.feature.spen_usp"

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x1

    const-string v24, "penInsert"

    const/16 v25, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    const-string v24, "com.samsung.pen.INSERT"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    if-nez v18, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "pen_detachment_option"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_3

    const/16 v24, 0x2

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v16, 0x0

    :cond_4
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    const-string v24, "isFactoryMode"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/android/phone/PenGestureReceiver;->isInCallTopActivity(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_5

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v24

    if-nez v24, :cond_5

    :cond_5
    if-eqz v18, :cond_6

    const-string v24, "com.samsung.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    const-string v24, "com.samsung.intent.spengesture.DOUBLE_TAB"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    const-string v24, "com.samsung.phone.MEMO_OPEN"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    :cond_6
    if-nez v13, :cond_0

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_9

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v7, v1, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v12

    if-eqz v12, :cond_8

    iget-object v5, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v11, :cond_7

    const/16 v24, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    const-string v24, ","

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    const-string v24, "PenGestureReceiver"

    const-string v25, "onReceive - ci is null"

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const-string v24, "PenGestureReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "open quick note in call,  action "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/ComponentName;

    const-string v24, "com.diotek.mini_penmemo"

    const-string v25, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v11

    const-string v24, "phonenumbers"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v19, Landroid/content/ComponentName;

    const-string v24, "com.samsung.android.snote"

    const-string v25, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v20

    const-string v24, "phonenumbers"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v24, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v22

    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    :goto_3
    if-nez v21, :cond_0

    const-string v24, "PenGestureReceiver"

    const-string v25, "QuickMemo StartService failed"

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Landroid/content/Intent;

    const-string v24, "android.intent.action.QUICKMEMO_LAUNCH"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "phonenumbers"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v24, "PenGestureReceiver"

    const-string v25, "QuickMemo StartService catch exception"

    invoke-static/range {v24 .. v25}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
