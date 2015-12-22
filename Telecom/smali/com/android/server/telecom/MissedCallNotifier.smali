.class public Lcom/android/server/telecom/MissedCallNotifier;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "MissedCallNotifier.java"


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCall:Lcom/android/server/telecom/Call;

.field private final mContext:Landroid/content/Context;

.field private mExpandedText:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastMissedCallPhotoIcon:Landroid/graphics/Bitmap;

.field private mMissedCallCount:I

.field private mMissedCallName:Ljava/lang/String;

.field public mNotiBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mUserId:I

.field private quickpanelNotifier:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "presentation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/MissedCallNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    iput v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    iput-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mExpandedText:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->quickpanelNotifier:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    iput-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mCall:Lcom/android/server/telecom/Call;

    iput-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mLastMissedCallPhotoIcon:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mUserId:I

    new-instance v0, Lcom/android/server/telecom/MissedCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier$1;-><init>(Lcom/android/server/telecom/MissedCallNotifier;)V

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/telecom/MissedCallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier$2;-><init>(Lcom/android/server/telecom/MissedCallNotifier;)V

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->quickpanelNotifier:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.telecom.peopleglance.RejectCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "dcm_incoming_call_notification_message"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/telecom/operator/jpn/NextiCallSMSReceiver;

    invoke-direct {v1}, Lcom/android/server/telecom/operator/jpn/NextiCallSMSReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.BROADCAST_SMS"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mUserId:I

    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->updateOnStartup()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/MissedCallNotifier;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->shouldUpdateMissedCalls(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/MissedCallNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->cancelMissedCallNotification()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/MissedCallNotifier;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/MissedCallNotifier;)Lcom/android/server/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/MissedCallNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->updateOnStartup()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mLastMissedCallPhotoIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/MissedCallNotifier;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mUserId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/telecom/MissedCallNotifier;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mUserId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/MissedCallNotifier;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/telecom/MissedCallNotifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/telecom/MissedCallNotifier;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mExpandedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/telecom/MissedCallNotifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mExpandedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/telecom/MissedCallNotifier;)Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->quickpanelNotifier:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    return-object v0
.end method

.method private cancelMissedCallNotification()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    new-instance v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->cancelCoverMissedNotification()V

    invoke-virtual {p0}, Lcom/android/server/telecom/MissedCallNotifier;->sendCheckedMissedCallToAndroidGear()V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private configureLedOnNotification(Landroid/app/Notification;)V
    .locals 1

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method

.method private createCallBackPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "com.android.server.telecom.ACTION_CALL_BACK_FROM_NOTIFICATION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createSendSmsFromNotificationPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 4

    const-string v0, "com.android.server.telecom.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v1, "smsto"

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/MissedCallNotifier;->createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/telecom/TelecomBroadcastReceiver;

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getLargeIconForMissedCall(Lcom/android/server/telecom/Call;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "getLargeIconForMissedCall"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhotoIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isNumberExists(I)Z

    move-result v3

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getImageIconForMissedCall(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getImageIconForMissedCall(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/EcidContact;->haveEcidImage()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/android/server/telecom/EcidContact;->isEcidContact(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/telecom/EcidContact;->getEcidImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getImageIconForMissedCall(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const-string v0, "EcidContact Set Photo Icon in getLargeIconForMissedCall"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/telecom/EcidContact;->getEcidImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getImageIconForMissedCall(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTextIconForMissedCall(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getImageIconForMissedCall(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private setSecureLockNotification(IJ)Landroid/app/Notification;
    .locals 6

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108007f

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/telecom/MissedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f08000e

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private shouldUpdateMissedCalls(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showMissedCallNotificationDelay(Lcom/android/server/telecom/Call;J)V
    .locals 2

    const-string v0, "showMissedCallNotification delayed 1000 ms as Home team\'s request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/telecom/MissedCallNotifier$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/telecom/MissedCallNotifier$4;-><init>(Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/Call;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateOnStartup()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "updateOnStartup()..."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/MissedCallNotifier$5;

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/telecom/MissedCallNotifier$5;-><init>(Lcom/android/server/telecom/MissedCallNotifier;Landroid/content/ContentResolver;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND new=1"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "content://logs/call"

    iget-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@logs/call"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateOnStartup mUri = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p0, v4, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/server/telecom/MissedCallNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "people_stripe"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.incallui.edge.BROADCAST_AGAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method clearMissedCalls()V
    .locals 2

    new-instance v0, Lcom/android/server/telecom/MissedCallNotifier$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier$3;-><init>(Lcom/android/server/telecom/MissedCallNotifier;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->cancelMissedCallNotification()V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallBadge;->updateBadge(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/PeopleStripeUtils;->removePeopleStripeNotification(Z)V

    const-string v0, "people_stripe"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.incallui.edge.DELETE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public createCallLogIntent()Landroid/content/Intent;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "createCallLogIntent : tphone mode"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.skt.prod.dialer"

    const-string v2, "com.skt.prod.dialer.activities.main.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "INIT_MAIN_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "GOTO_ACTIVITY"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "createCallLogIntent : ollehphone mode"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.kt.ollehphone"

    const-string v2, "com.kt.ollehphone.phone.dialer.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "calllog_fragment"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v0, "createCallLogIntent : RECENT_CALLS"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "notify"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v0, "createCallLogIntent"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "dcm_dialer_incoming_log_missed"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "missed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public createCallLogPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/telecom/MissedCallNotifier;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v5

    const-string v2, "ims_support_multimedia_caller_id"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "photoring_reject_all"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v2, v3

    :goto_1
    const-string v6, "usa_cdma_smc_fac_req"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ctc_cdma_smc_fac_req"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v6

    invoke-static {v6, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentation(ILcom/android/server/telecom/Call;)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isPresentationAllowed(I)Z

    move-result v6

    :goto_2
    if-nez v6, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNameForCall  presentation : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "usa_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ctc_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v5

    invoke-static {v2, v5, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentationString(Landroid/content/Context;ILcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameForCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {p0, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    :goto_4
    return-object v2

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMcidBlockedNumber()Z

    move-result v2

    if-nez v2, :cond_12

    move v2, v4

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->isNumberExists(I)Z

    move-result v6

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_11

    if-eqz v2, :cond_11

    const-string v2, "usa_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "ctc_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object v2, v5

    goto :goto_3

    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_e

    :goto_5
    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v7}, Lcom/android/server/telecom/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/telecom/EcidContact;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, v7}, Lcom/android/server/telecom/EcidContact;->getContactName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "wireless caller"

    if-eq v1, v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "unknown name"

    if-ne v1, v3, :cond_2

    :cond_b
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "number_format_with_country_iso"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_c
    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v0}, Lcom/android/server/telecom/operator/OperatorUtils;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_e
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_f
    move-object v2, v0

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_11
    move-object v2, v1

    goto/16 :goto_3

    :cond_12
    move v2, v3

    goto/16 :goto_1
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/4 v2, 0x0

    if-eq p2, v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-ne p3, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableWhitepages"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {p0, p1, v0}, Lcom/whitepages/nameid/NameIDHelper;->showMissedCallNotification(Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/Call;I)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged - oldState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p2, v3, :cond_2

    if-ne p3, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAutoAnswered"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotificationDelay(Lcom/android/server/telecom/Call;J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public refreshMissedCallNotifications()V
    .locals 2

    const-string v0, "refreshMissedCallNotifications"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->cancelMissedCallNotification()V

    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->updateOnStartup()V

    return-void
.end method

.method sendCheckedMissedCallToAndroidGear()V
    .locals 3

    const-string v0, "sendCheckedMissedCall()..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public showMissedCallNotification(Lcom/android/server/telecom/Call;)V
    .locals 12

    const-string v0, "showMissedCallNotification"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    new-instance v5, Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->getRadNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPrayModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    move-object v2, v1

    move-object v1, v0

    :goto_0
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_1
    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-static {v0}, Lcom/android/server/telecom/EcidContact;->isEcidContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x108007f

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v7, 0x7f08000f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u200e"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u202c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090009

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/telecom/MissedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "call"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/telecom/MissedCallNotifier;->setSecureLockNotification(IJ)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_a

    const/4 v0, 0x0

    :goto_3
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {v0}, Lcom/android/server/telecom/operator/OperatorUtils;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v4, :cond_b

    const/4 v0, 0x0

    :goto_4
    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_5
    iget v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_e

    const-string v4, "Add actions with number %s."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {p0, v4, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "usa_cdma_smc_fac_req"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ctc_cdma_smc_fac_req"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v4

    invoke-static {v4, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentation(ILcom/android/server/telecom/Call;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isPresentationAllowed(I)Z

    move-result v4

    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v7, 0x7f080022

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const v4, 0x7f02000c

    iget-object v7, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v8, 0x7f080010

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0}, Lcom/android/server/telecom/MissedCallNotifier;->createCallBackPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const v4, 0x7f02000d

    iget-object v7, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v8, 0x7f080011

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0}, Lcom/android/server/telecom/MissedCallNotifier;->createSendSmsFromNotificationPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v6, v4, v7, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhotoIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/android/server/telecom/EcidContact;->isEcidContact(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/server/telecom/EcidContact;->haveEcidImage()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "EcidContact Set Photo Icon to EcidContact.getEcidImage"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/EcidContact;->getEcidImage()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_d

    invoke-virtual {v5, v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->setPhoto(Landroid/graphics/Bitmap;)V

    const-string v4, "support_sview_cover_photo_id"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mLastMissedCallPhotoIcon:Landroid/graphics/Bitmap;

    :cond_5
    :goto_7
    invoke-direct {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->getLargeIconForMissedCall(Lcom/android/server/telecom/Call;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const-string v0, "Notifying %d missed calls to SViewCover"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-virtual {v5, p1, v0, v4}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->notifyMissedCall(Lcom/android/server/telecom/Call;Ljava/lang/String;I)V

    :goto_8
    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    const/4 v4, 0x1

    if-le v0, v4, :cond_10

    iput-object v6, p0, Lcom/android/server/telecom/MissedCallNotifier;->mNotiBuilder:Landroid/app/Notification$Builder;

    iput-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mExpandedText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "missed call notification by carrier-phone."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f08000e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const v0, 0x108007f

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f08000f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u200e"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u202c"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/telecom/MissedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v3, "call"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v3, v8, v9}, Lcom/android/server/telecom/MissedCallNotifier;->setSecureLockNotification(IJ)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isNumberExists(I)Z

    move-result v4

    goto/16 :goto_6

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->setPhoto(Landroid/graphics/Bitmap;)V

    const-string v4, "support_sview_cover_photo_id"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mLastMissedCallPhotoIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_7

    :cond_e
    const-string v0, "Suppress actions. handle: %s, missedCalls: %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget v7, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_f
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallBadge;->updateBadge(Landroid/content/Context;I)V

    goto/16 :goto_9

    :cond_10
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v3, v2, v4, v5}, Lcom/android/server/telecom/secutils/PeopleStripeUtils;->makePeopleStripeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "missed call notification by carrier-phone."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    iput v1, v0, Landroid/app/Notification;->missedCount:I

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v1, 0x20202020

    iput v1, v0, Landroid/app/Notification;->commonValue:I

    :cond_12
    invoke-direct {p0, v0}, Lcom/android/server/telecom/MissedCallNotifier;->configureLedOnNotification(Landroid/app/Notification;)V

    const-string v1, "Adding missed call notification for %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallBadge;->updateBadge(Landroid/content/Context;I)V

    goto/16 :goto_9

    :cond_13
    move-object v3, v0

    move-object v0, v4

    goto/16 :goto_5
.end method
