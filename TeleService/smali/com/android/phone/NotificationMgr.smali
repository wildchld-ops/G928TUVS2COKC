.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$SecDormantSwitchObserver;,
        Lcom/android/phone/NotificationMgr$StatusBarHelper;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/NotificationMgr;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mContext:Landroid/content/Context;

.field private final mDormantObserver:Landroid/database/ContentObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMwiVisible:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhone1:Lcom/android/internal/telephony/Phone;

.field private mPhone2:Lcom/android/internal/telephony/Phone;

.field private mSelectedSimNumber:I

.field private mSelectedUnavailableNotify:Z

.field private mSelectedUnavailableNotify2:Z

.field private mSpamCallsFilterNotification:Landroid/app/Notification;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private preNetworkSelection:Ljava/lang/String;

.field private preNetworkSelection2:Ljava/lang/String;

.field public statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    sput-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/phone/NotificationMgr$SecDormantSwitchObserver;

    invoke-direct {v1, p0}, Lcom/android/phone/NotificationMgr$SecDormantSwitchObserver;-><init>(Lcom/android/phone/NotificationMgr;)V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mDormantObserver:Landroid/database/ContentObserver;

    iput v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedSimNumber:I

    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify2:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection2:Ljava/lang/String;

    new-instance v1, Lcom/android/phone/NotificationMgr$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NotificationMgr$1;-><init>(Lcom/android/phone/NotificationMgr;)V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v1, Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "dcm_disable_block_reject_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mDormantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->contactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->memoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NotificationMgr;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mSpamCallsFilterNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/NotificationMgr;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private applyIcon(ILandroid/widget/RemoteViews;)V
    .locals 8

    const v1, 0x7f1001bc

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v7

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p2

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    const-string v0, "setBackgroundResource"

    const v3, 0x7f0200d6

    invoke-virtual {p2, v1, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0162

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object v0, p2

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_0
    return-void
.end method

.method private cancelAsUser(II)V
    .locals 7

    const/4 v6, 0x1

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v5, 0x11

    if-eq p2, v5, :cond_1

    :cond_0
    if-ne v1, v6, :cond_2

    const/4 v5, 0x4

    if-ne p2, v5, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private cancelNetworkSelection()V
    .locals 4

    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x6

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private cancelNetworkSelection(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelNetworkSelection() - subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0xce

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    goto :goto_0
.end method

.method private getCSVideoCfi()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "getVideoCallForwardingIndicator"

    aput-object v4, v0, v3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method static init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;
    .locals 4

    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyAsUser(IILandroid/app/Notification;)V
    .locals 7

    const/4 v6, 0x1

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v5, 0x11

    if-eq p2, v5, :cond_1

    :cond_0
    if-ne v1, v6, :cond_2

    const/4 v5, 0x4

    if-ne p2, v5, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2, p3, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private showNetworkSelection(Ljava/lang/String;I)V
    .locals 15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showNetworkSelection("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")...subId :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string v10, "gsm.sim.state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x108008a

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0a01f5

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0a01f6

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x10200000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v10, "feature_kor"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "ABSENT"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.phone"

    const-string v12, "com.android.phone.mobilenetworks.kor.NetworkOperators"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const/4 v5, 0x6

    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/16 v5, 0xce

    :cond_0
    const/4 v2, 0x0

    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/high16 v11, 0x8000000

    invoke-static {v10, v5, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_1
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_6

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.phone"

    const-string v12, "com.android.phone.MobileNetworkSettingsTab"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v10, "NetworkSetting"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "phoneId"

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showNetworkSelection phoneId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.phone"

    const-string v12, "com.android.phone.NetworkSetting"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->isOwner()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v2

    :goto_4
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v10, v11, v5, v12, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method public cancelAllowDataAccess()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x390

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->cancelAllowDataAccess(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method public cancelDataDisconnectedRoaming()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    return-void
.end method

.method public cancelDisableAutoRejectNotification()V
    .locals 2

    const-string v0, "cancelDisableAutoRejectNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelDisableBlockModeNotification()V
    .locals 2

    const-string v0, "cancelDisableBlockModeNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelEmegencyCallbackMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x38f

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->cancelEmegencyCallbackMode(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method public cancelSpamCallsFilterNotification()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "cancelSpamCallsFilterNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mSpamCallsFilterNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x15

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method hideDataDisconnectDomestic()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideDataDisconnectDomestic()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method hideRoamingNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public isDataRoaming()Z
    .locals 3

    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    const-string v2, "gsm.operator.isroaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyAllowDataAccess()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x390

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->notifyAllowDataAccess(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    return-void
.end method

.method notifyDataDisconnectDomestic()V
    .locals 6

    const v5, 0x7f0a0490

    sget-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "notifyDataDisconnectDomestic()..."

    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_0
    const-string v2, "8"

    const-string v3, "ril.ActivePDPRejectCause"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0a048f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "ril.ActivePDPRejectCause"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectDomestic()V

    goto :goto_0
.end method

.method public notifyDataDisconnectedRoaming()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    return-void
.end method

.method public notifyDisableAutoRejectNotification()V
    .locals 8

    const v7, 0x7f0a02a5

    const/16 v6, 0xd

    const-string v3, "notifyDisableAutoRejectNotification()..."

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.phone.callsettings.extra.TYPE_OF_REJECT_MODE"

    const-string v4, "auto_reject"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-static {v3, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0297

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f02009c

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public notifyEmegencyCallbackMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x38f

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->notifyEmegencyCallbackMode(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    return-void
.end method

.method refreshMwi(I)V
    .locals 5

    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_2
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/phone/NotificationMgr;->updateMwi(IZZ)V

    goto :goto_0
.end method

.method sendClearVoicemailInfo()V
    .locals 3

    const-string v1, "sendClearVoicemailInfo()..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ID"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.phone.voicemail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ITEM_ID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method sendVoiceMailInfo(ZIJLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    sget-object v3, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendVoiceMailInfo count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    if-ge v6, p2, :cond_0

    const/16 v3, 0xff

    if-ge p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0a06d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.accessory.intent.action.ALERT_NOTIFICATION_ITEM"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "NOTIFICATION_ID"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "NOTIFICATION_PACKAGE_NAME"

    const-string v4, "com.android.phone.voicemail"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "NOTIFICATION_TIME"

    invoke-virtual {v0, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "NOTIFICATION_MAIN_TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "NOTIFICATION_LAUNCH_INTENT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "NOTIFICATION_VM_COUNT"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "NOTIFICATION_VM_NUMBER"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v1, "android.intent.action.DIAL"

    goto :goto_0
.end method

.method public setCancelNetworkSelection()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    return-void
.end method

.method showDataDisconnectedRoaming()V
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x0

    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_0
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "roaming_auto_dial"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showLUCDataDisconnectedRoaming()V

    :cond_1
    return-void

    :cond_2
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v4, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "roaming_enhancement"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getRoamingIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    :cond_3
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v12, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0128

    invoke-virtual {v9, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x108008a

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0124

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f0c0000

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v1

    :goto_2
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v9, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11, v5, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_6
    move-object v9, v10

    goto :goto_2
.end method

.method showLUCDataDisconnectedRoaming()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v8, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v8}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x108008a

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0124

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f0c0000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0128

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v8, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "data_roaming"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v3, v6

    :goto_0
    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lte_roaming_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_3

    move v4, v6

    :goto_1
    const-string v6, "27"

    const-string v8, "ril.ActivePDPRejectCause"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0a069f

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0a06a0

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    if-nez v3, :cond_1

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Landroid/app/Notification;->flags:I

    :cond_1
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_2
    move v3, v7

    goto :goto_0

    :cond_3
    move v4, v7

    goto :goto_1
.end method

.method public showSpamCallsFilterNotification()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0a078c

    const/4 v5, 0x0

    const-string v3, "showSpamCallsFilterNotification()..."

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/SpamCallsLegalInfoDialog;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0200ce

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0a078b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mSpamCallsFilterNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x15

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mSpamCallsFilterNotification:Landroid/app/Notification;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public updateCdmaCfi(Z)V
    .locals 13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCdmaCfi(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    move v8, p1

    const/4 v7, 0x0

    if-nez v8, :cond_0

    if-eqz v7, :cond_4

    :cond_0
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0200ea

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0a00cd

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0a00d1

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v9, "feature_ctc"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "com.android.phone"

    const-string v10, "com.android.phone.CdmaCallForwardOptions"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v9, "SS_Type"

    const-string v10, "forwarding"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v1

    :goto_2
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v10, 0x0

    const/16 v11, 0x12

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v9, "com.android.phone"

    const-string v10, "com.android.phone.CallTypeSelect"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v10, 0x0

    const/16 v11, 0x12

    invoke-virtual {v9, v10, v11, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method updateCfi(IZ)V
    .locals 17

    sget-boolean v13, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateCfi(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_2

    invoke-virtual/range {p0 .. p2}, Lcom/android/phone/NotificationMgr;->updateCfiMultiSIM(IZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v12

    const/4 v11, 0x0

    const-string v13, "video_call_not_support"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "common_vt"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->getCSVideoCfi()Z

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateCfi(): getCSVideoCfi() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateCfi(): visible= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " voice= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " video= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    if-nez v12, :cond_5

    if-eqz v11, :cond_f

    :cond_5
    const/4 v2, 0x0

    if-eqz v12, :cond_6

    if-nez v11, :cond_7

    :cond_6
    const-string v13, "show_callforward_allcalls_string"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v14, 0x7f0a00d1

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    if-nez v7, :cond_a

    sget-object v13, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found null subscription info for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0309

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v14, 0x7f0a030a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_b

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0200ea

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v15, 0x7f0a00cd

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x14000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v13, "video_call_not_support"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "com.android.phone"

    const-string v14, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/android/phone/SubscriptionInfoHelper;->addExtrasToIntent(Landroid/content/Intent;Landroid/telephony/SubscriptionInfo;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-static {v13, v0, v5, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v13

    if-eqz v13, :cond_d

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v14, 0x7f0a00cd

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_c
    const-string v13, "com.android.phone"

    const-string v14, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_d
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->isOwner()Z

    move-result v13

    if-eqz v13, :cond_e

    move-object v13, v3

    :goto_6
    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_5

    :cond_e
    const/4 v13, 0x0

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    const/4 v4, 0x0

    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v13

    if-eqz v13, :cond_10

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_10
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_8
.end method

.method updateCfiMultiSIM(IZ)V
    .locals 25

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateCfiMultiSIM(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v18

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v5, 0x7f0200ea

    const-string v20, "video_call_not_support"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "getVideoCallForwardingIndicator"

    aput-object v21, v13, v20

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13, v14}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    iget-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13, v14}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    iget-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    :cond_1
    :goto_0
    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v19

    if-nez v18, :cond_2

    if-eqz v16, :cond_a

    :cond_2
    if-nez v19, :cond_3

    if-eqz v17, :cond_a

    :cond_3
    const/4 v9, 0x1

    :goto_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateCfiMultiSIM() : voice = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " voice sim2 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " video = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " video sim2 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :goto_2
    if-nez v18, :cond_4

    if-nez v16, :cond_4

    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_19

    if-nez v18, :cond_4

    if-nez v16, :cond_4

    if-nez v19, :cond_4

    if-eqz v17, :cond_19

    :cond_4
    const/4 v15, 0x1

    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v20, "video_call_not_support"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.GsmUmtsCallForwardOptions"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    if-eqz v18, :cond_10

    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0a00d1

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    if-eqz v10, :cond_12

    const-string v20, "CallSettingTab"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v20, 0x0

    const/16 v21, 0x67

    invoke-static/range {v20 .. v21}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v5

    :cond_5
    :goto_5
    if-nez v11, :cond_6

    move-object v6, v4

    :cond_6
    if-nez v10, :cond_7

    if-eqz v19, :cond_13

    if-eqz v17, :cond_13

    if-nez v10, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0a00d1

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_6
    move-object v4, v7

    :cond_7
    new-instance v12, Landroid/app/Notification;

    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v12, v5, v0, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a00cd

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x8000000

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v12, v0, v1, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v12, Landroid/app/Notification;->flags:I

    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_18

    if-eqz v10, :cond_16

    const-string v20, "SIM1 only"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    const/16 v20, 0x11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->cancelAsUser(II)V

    :cond_8
    :goto_7
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13, v14}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    iget-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    goto/16 :goto_0

    :cond_a
    if-nez v19, :cond_c

    if-nez v17, :cond_c

    if-nez v18, :cond_b

    if-eqz v16, :cond_d

    :cond_b
    const-string v20, "1"

    const-string v21, "ril.MSIMM"

    const-string v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_e
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateCfiMultiSIM() : voice = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " video = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_10
    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0a0309

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0a030a

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_12
    if-eqz v11, :cond_5

    const-string v20, "CallSettingTab"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v20, 0x1

    const/16 v21, 0x67

    invoke-static/range {v20 .. v21}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v5

    goto/16 :goto_5

    :cond_13
    if-nez v19, :cond_14

    if-eqz v11, :cond_15

    if-eqz v18, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0a0309

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0a030a

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    :cond_16
    if-eqz v11, :cond_17

    const-string v20, "SIM2 only"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/16 v20, 0x11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->cancelAsUser(II)V

    goto/16 :goto_7

    :cond_17
    if-eqz v9, :cond_8

    const-string v20, "Dual SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string v20, "CallSettingTab"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v20, 0x0

    const/16 v21, 0x67

    invoke-static/range {v20 .. v21}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a00cd

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x8000000

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v12, v0, v1, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    const-string v20, "CallSettingTab"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v20, 0x1

    const/16 v21, 0x67

    invoke-static/range {v20 .. v21}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a00cd

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/high16 v24, 0x8000000

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v12, v0, v1, v7, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v20, 0x11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    goto/16 :goto_7

    :cond_18
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    goto/16 :goto_7

    :cond_19
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->cancelAsUser(II)V

    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->cancelAsUser(II)V

    goto/16 :goto_7
.end method

.method public updateDisableAutoRejectStatus(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cleared_auto_reject_notify"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateDisableBlockModeStatus(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cleared_block_mode_notify"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method updateMwi(IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/phone/NotificationMgr;->updateMwi(IZZ)V

    return-void
.end method

.method updateMwi(IZZ)V
    .locals 38

    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string v34, "Called updateMwi() on non-voice-capable device! Ignoring..."

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "feature_spr"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->hasVisualVoicemail()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string v34, "updateMwi() is skip."

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "updateMwi(): subId "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " update to "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz p2, :cond_14

    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v21

    if-nez v21, :cond_3

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Found null phone for: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v26

    if-nez v26, :cond_4

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Found null subscription info for: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const v24, 0x108007e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v34, 0x7f0a01f0

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v5, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/operator/usa/TelephonyExtension;->isVoicemailNumberDefault(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v10, "*86"

    :goto_1
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "- got vm number: \'"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v34, "\'"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_5
    if-nez v10, :cond_7

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v5

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_7
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v33

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getVoiceMessageCount = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v33

    const/4 v5, 0x1

    move/from16 v0, v33

    if-ge v5, v0, :cond_8

    const/16 v5, 0xff

    move/from16 v0, v33

    if-ge v0, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v34, 0x7f0a01f1

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v34, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v5, v34

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    :cond_8
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v22

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v34, 0x7f0a01f4

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v34, 0x7f0a01f4

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v13, Landroid/content/Intent;

    const-string v5, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.android.phone.SetupVoicemail"

    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v13, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    move/from16 v0, p1

    invoke-virtual {v13, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v34, Lcom/android/phone/CallFeaturesSetting;

    move-object/from16 v0, v34

    invoke-virtual {v13, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/16 v34, 0x0

    move/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v5, v0, v13, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    const/16 v25, 0x0

    const-string v5, "button_voicemail_notification_ringtone_key"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v5, "pref_key_voicemail_sound"

    const/16 v34, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "voicemail_notification_setting"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v4, :cond_10

    const/16 v25, 0x0

    :cond_9
    :goto_3
    const/4 v14, 0x1

    const-string v5, "feature_tmo"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v14, 0x0

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v8, v18

    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v11, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v34

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const/high16 v35, 0x7f0c0000

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getColor(I)I

    move-result v34

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-static/range {v23 .. v23}, Lcom/android/phone/CallFeaturesSetting;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z

    const/16 v32, 0x0

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "button_meterial_voicemail_notification_vibrate_key"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    :goto_4
    if-eqz v32, :cond_b

    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_b
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v31

    const/4 v12, 0x0

    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_13

    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const-string v34, "no_outgoing_calls"

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x3

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v30

    invoke-virtual {v5, v0, v1, v15, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_d
    const-string v5, "voicemail_roaming_nuber"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v34, 0x7f0a01f2

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const v37, 0x7f0a01ee

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x10200000

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v34, Lcom/android/phone/VoiceMailDialAlertDialog;

    move-object/from16 v0, v34

    invoke-virtual {v13, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/16 v34, 0x1

    move/from16 v0, v34

    if-le v5, v0, :cond_f

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_6
    new-instance v13, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    const-string v34, "voicemail"

    const-string v35, ""

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v13, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    move-object/from16 v0, v22

    invoke-virtual {v13, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v34, 0x7f0a01f2

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    :cond_10
    if-eqz p3, :cond_9

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    goto/16 :goto_3

    :cond_11
    sget-object v25, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto/16 :goto_3

    :cond_12
    const-string v5, "button_voicemail_notification_vibrate_key"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    goto/16 :goto_4

    :cond_13
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/phone/NotificationMgr;->sendVoiceMailInfo(ZIJLjava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x3

    sget-object v36, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->sendClearVoicemailInfo()V

    goto/16 :goto_0
.end method

.method updateNetworkSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(II)V

    return-void
.end method

.method updateNetworkSelection(II)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneBySubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "global_network_cdma_gsm_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network_selection_name_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network_selection_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNetworkSelection()...serviceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkSelection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SimState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-ne v0, v7, :cond_5

    :cond_3
    const-string v5, "NO SIM"

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_6

    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection(I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "network_manually_selected"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    if-eq p1, v7, :cond_7

    if-ne p1, v9, :cond_d

    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "global_network_cdma_gsm_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v9, :cond_4

    :cond_8
    const-string v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "[CTC] not necessary"

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v5

    if-ne v5, v7, :cond_b

    iget-boolean v5, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify2:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection2:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_a
    invoke-direct {p0, v2, p2}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;I)V

    iput-boolean v7, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify2:Z

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection2:Ljava/lang/String;

    goto :goto_1

    :cond_b
    iget-boolean v5, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_c
    invoke-direct {p0, v2, p2}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;I)V

    iput-boolean v7, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v5

    if-ne v5, v7, :cond_e

    iget-boolean v5, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify2:Z

    if-eqz v5, :cond_4

    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection(I)V

    iput-boolean v8, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify2:Z

    const-string v5, ""

    iput-object v5, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection2:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    iget-boolean v5, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v5, :cond_4

    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection(I)V

    iput-boolean v8, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    const-string v5, ""

    iput-object v5, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNetworkSelection()...state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not updating network due to invalid subId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateRoamingNotification(Z)V
    .locals 14

    const v13, 0x7f0200e8

    const v12, 0x7f1001c2

    const v11, 0x7f1001c1

    const/16 v10, 0x8

    const/4 v9, 0x0

    sget-object v6, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRoamingNotification : [roamingMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->isDataRoaming()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string v7, "updateRoamingNotification : Not roaming area..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->hideRoamingNotification()V

    :goto_0
    return-void

    :cond_0
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f04009d

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f04009e

    invoke-direct {v2, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v1, 0x1060059

    if-eqz p1, :cond_1

    const v6, 0x7f1001c0

    invoke-virtual {v5, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f1001bf

    invoke-virtual {v5, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v5, v12, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v5, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f1001c0

    invoke-virtual {v2, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f1001bf

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v12, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    const v6, 0x7f1001bd

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v6, 0x7f1001bd

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v6, 0x7f1001bc

    invoke-virtual {v5, v6, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v6, 0x7f1001bc

    invoke-virtual {v2, v6, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-direct {p0, v13, v5}, Lcom/android/phone/NotificationMgr;->applyIcon(ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v13, v2}, Lcom/android/phone/NotificationMgr;->applyIcon(ILandroid/widget/RemoteViews;)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0414

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0416

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x1060059

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iput-object v2, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/app/Notification;->flags:I

    const/4 v6, 0x1

    iput v6, v3, Landroid/app/Notification;->priority:I

    const/4 v6, 0x1

    iput v6, v3, Landroid/app/Notification;->visibility:I

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, v3, Landroid/app/Notification;->color:I

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v7, 0xc

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_1
    const v6, 0x7f1001bf

    invoke-virtual {v5, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f1001c0

    invoke-virtual {v5, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v5, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v5, v12, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f1001bf

    invoke-virtual {v2, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f1001c0

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v12, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1
.end method
