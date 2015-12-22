.class public Lcom/android/settings/sim/SimBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimBootReceiver.java"


# static fields
.field private static final UX_CONFIG:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SIM_MGR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/sim/SimBootReceiver;->UX_CONFIG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/android/settings/sim/SimBootReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimBootReceiver$1;-><init>(Lcom/android/settings/sim/SimBootReceiver;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimBootReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimBootReceiver;->detectChangeAndNotify()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8

    const/high16 v7, 0x10000000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f020175

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0900df

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0a0d9a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0a0d9b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private detectChangeAndNotify()V
    .locals 15

    iget-object v12, p0, Lcom/android/settings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v9

    iget-object v12, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "device_provisioned"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v12, 0x2

    if-lt v9, v12, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_7

    iget-object v12, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sim_slot_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimBootReceiver;->getLastSubId(Ljava/lang/String;)I

    move-result v6

    if-eqz v11, :cond_6

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const/4 v12, -0x2

    if-ne v6, v12, :cond_5

    invoke-direct {p0, v4, v0}, Lcom/android/settings/sim/SimBootReceiver;->setLastSubId(Ljava/lang/String;I)V

    :cond_3
    :goto_3
    move v5, v1

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eq v6, v0, :cond_3

    iget-object v12, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/android/settings/sim/SimBootReceiver;->createNotification(Landroid/content/Context;)V

    invoke-direct {p0, v4, v0}, Lcom/android/settings/sim/SimBootReceiver;->setLastSubId(Ljava/lang/String;I)V

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, -0x1

    if-eq v6, v12, :cond_4

    iget-object v12, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/android/settings/sim/SimBootReceiver;->createNotification(Landroid/content/Context;)V

    const/4 v12, -0x1

    invoke-direct {p0, v4, v12}, Lcom/android/settings/sim/SimBootReceiver;->setLastSubId(Ljava/lang/String;I)V

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    if-eqz v7, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v12, 0x10000000

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v12, 0x1

    if-ne v8, v12, :cond_8

    sget-object v12, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v12, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v2, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_8
    sget-object v12, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private getLastSubId(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setLastSubId(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-string v1, "sim_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget v0, Lcom/android/settings/sim/SimBootReceiver;->UX_CONFIG:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    return-void
.end method
