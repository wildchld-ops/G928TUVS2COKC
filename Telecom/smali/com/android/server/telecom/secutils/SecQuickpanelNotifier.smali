.class public Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;
.super Ljava/lang/Object;
.source "SecQuickpanelNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllMissedCallsFromSamePerson:Z

.field private mCall:Lcom/android/server/telecom/Call;

.field private mContext:Landroid/content/Context;

.field private mMissedCallCount:I

.field private mMissedCallName:Ljava/lang/String;

.field mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

.field private mMissedCallers:Ljava/lang/String;

.field private mNoti:Landroid/app/Notification;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mAllMissedCallsFromSamePerson:Z

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mAllMissedCallsFromSamePerson:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mAllMissedCallsFromSamePerson:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallers:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mNoti:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mNoti:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->registerMissedCallNotification(Landroid/app/Notification;)V

    return-void
.end method

.method private static configureLedNotification(Landroid/app/Notification;)V
    .locals 1

    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/Notification;->defaults:I

    return-void
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

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v3, p1}, Lcom/android/server/telecom/MissedCallNotifier;->getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isNumberExists(I)Z

    move-result v3

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getImageIconForMissedCall(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getImageIconForMissedCall(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTextIconForMissedCall(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getImageIconForMissedCall(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private registerMissedCallNotification(Landroid/app/Notification;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->TAG:Ljava/lang/String;

    const-string v1, "registerMissedCallNotification"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->TAG:Ljava/lang/String;

    const-string v1, " - blocked in the carrier-phone mode."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallCount:I

    iput v0, p1, Landroid/app/Notification;->missedCount:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallName:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    const/4 v0, 0x2

    iput v0, p1, Landroid/app/Notification;->priority:I

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallers:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mAllMissedCallsFromSamePerson:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mCall:Lcom/android/server/telecom/Call;

    invoke-direct {p0, v2}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->getLargeIconForMissedCall(Lcom/android/server/telecom/Call;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    invoke-static {p1}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->configureLedNotification(Landroid/app/Notification;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method public notifyMissedCall(Lcom/android/server/telecom/Call;Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification$Builder;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMissedCall : creationTimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " missedCallCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mNoti:Landroid/app/Notification;

    new-instance v2, Landroid/app/Notification$InboxStyle;

    invoke-direct {v2, p5}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mCall:Lcom/android/server/telecom/Call;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallCount:I

    iput-object p4, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallers:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mAllMissedCallsFromSamePerson:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 1  AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;-><init>(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Landroid/content/ContentResolver;)V

    const-string v3, "content://logs/call/group"

    iget-object v6, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "@logs/call/group"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    sget-object v6, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyMissedCall mUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC LIMIT 10"

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
