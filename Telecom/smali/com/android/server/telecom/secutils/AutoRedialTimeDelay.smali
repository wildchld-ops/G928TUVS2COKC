.class public Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;
.super Ljava/lang/Object;
.source "AutoRedialTimeDelay.java"


# instance fields
.field private final REDIAL_CALL_INIT_COUNT:I

.field private final REDIAL_CALL_MAX_COUNT:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mRedialCount:I

.field private mRedialProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->REDIAL_CALL_INIT_COUNT:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->REDIAL_CALL_MAX_COUNT:I

    iput v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    new-instance v0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$1;-><init>(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$2;-><init>(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;-><init>(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->startAutoRedial()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private shouldMakeAutoRedial(Lcom/android/server/telecom/Call;I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoredial_mode_sim2"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "AutoRedialTimeDelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAutoRedial : isRedialMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_4

    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoredial_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const-string v0, "AutoRedialTimeDelay"

    const-string v1, "startAutoRedial : previous state is not Dialing"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    move v2, v1

    goto :goto_2

    :pswitch_1
    const-string v1, "AutoRedialTimeDelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAutoRedial : DO not make redial in current disconnectedCause : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startAutoRedial()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "AutoRedialTimeDelay"

    const-string v1, "startAutoRedial"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v1}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setRedialCall(Z)V

    const-string v2, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->createSecCallExtraBundle(Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AutoRedialTimeDelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public startAutoRedialTimeDelay(Lcom/android/server/telecom/Call;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->shouldMakeAutoRedial(Lcom/android/server/telecom/Call;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mPendingIntent:Landroid/app/PendingIntent;

    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    if-lt v0, v6, :cond_3

    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_4
    iput v5, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I

    goto :goto_0
.end method
