.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$NotificationTimer;
    }
.end annotation


# instance fields
.field private mCallState:I

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyNeedToChange:Z

.field private mIsShowingNotification:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

.field private mSavedContent:I

.field private mSavedContentTitle:Ljava/lang/String;

.field private mSavedIcon:I

.field private mSavedLargeIcon:Landroid/graphics/Bitmap;

.field private mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/SecStatusBarNotifier;

    invoke-direct {v0, p1, p2}, Lcom/android/incallui/SecStatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method private addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 4

    const-string v1, "Will show \"accept\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0d014c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addAnswerAction(Landroid/app/Notification$Builder;)V
    .locals 4

    const-string v1, "Will show \"answer\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0200a1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0148

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addDismissAction(Landroid/app/Notification$Builder;)V
    .locals 4

    const-string v1, "Will show \"dismiss\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0200a2

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0d014d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 4

    const-string v1, "Will show \"dismiss\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0d014d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addHangupAction(Landroid/app/Notification$Builder;)V
    .locals 4

    const-string v1, "Will show \"hang-up\" action in the ongoing active call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f02009e

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0149

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V
    .locals 3

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tel"

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private addVideoCallAction(Landroid/app/Notification$Builder;)V
    .locals 4

    const-string v1, "Will show \"video\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0200e6

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0d014a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addVoiceAction(Landroid/app/Notification$Builder;)V
    .locals 4

    const-string v1, "Will show \"voice\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0200a1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0d014b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 12

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-direct {p0, v7}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-direct {p0, p2, v7}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v7}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-direct {p0, p2, v7}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/StatusBarNotifier;->checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v0, 0x4

    if-eq v5, v0, :cond_2

    const/4 v0, 0x5

    if-ne v5, v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v6, v8, v7}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V

    const-string v0, "call"

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f090004

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v11, 0x3

    if-ne v0, v11, :cond_4

    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    invoke-direct {p0, v6}, Lcom/android/incallui/StatusBarNotifier;->addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    invoke-direct {p0, v6}, Lcom/android/incallui/StatusBarNotifier;->addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    :goto_2
    invoke-direct {p0, v6, p2, v7}, Lcom/android/incallui/StatusBarNotifier;->addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v11, 0x1

    invoke-virtual {v0, v11, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v7, v5, v6}, Lcom/android/incallui/StatusBarNotifier;->createIncomingCallNotification(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V

    goto :goto_2
.end method

.method private cancelInCall()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelInCall()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    return-void
.end method

.method private checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v4, :cond_5

    :cond_1
    move v0, v2

    :goto_0
    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    if-ne v4, p1, :cond_2

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    if-ne v4, p2, :cond_2

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    if-ne v4, p5, :cond_2

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-ne v4, p3, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    move v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    if-nez v2, :cond_3

    const-string v2, "Showing notification for first time."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    iput p1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    iput p2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    iput p5, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "Data changed.  Showing notification"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1
.end method

.method static clearInCallNotification(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Something terrible happened. Clear all InCall notifications"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Setting fullScreenIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createIncomingCallNotification(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V
    .locals 3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    :goto_0
    if-eq p2, v2, :cond_0

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addHangupAction(Landroid/app/Notification$Builder;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_4
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addDismissAction(Landroid/app/Notification$Builder;)V

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addVoiceAction(Landroid/app/Notification$Builder;)V

    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addVideoCallAction(Landroid/app/Notification$Builder;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addAnswerAction(Landroid/app/Notification$Builder;)V

    goto :goto_1
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZZ)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-class v2, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v0, p1, v1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private getContentString(Lcom/android/incallui/Call;)I
    .locals 3

    const v0, 0x7f0d0143

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_0
    const v0, 0x7f0d0145

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    const v0, 0x7f0d0144

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0d0141

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const v0, 0x7f0d0147

    goto :goto_0
.end method

.method private getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4000

    invoke-virtual {p2, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getIconToDisplay(Lcom/android/incallui/Call;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const v0, 0x7f0200cb

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x7f0200e6

    goto :goto_0

    :cond_1
    const v0, 0x7f0200a1

    goto :goto_0
.end method

.method private getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x4000

    invoke-virtual {p2, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ea

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    invoke-static {v1, v2, v0}, Lcom/android/incallui/utils/BitmapUtil;->getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method private showNotification(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v2, Lcom/android/incallui/StatusBarNotifier$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/StatusBarNotifier$2;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;

    iget-boolean v4, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/incallui/SecStatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "updateInCallNotification..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v0

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v4, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v2

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v4}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v4

    sget-object v5, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v4, v5, :cond_7

    :cond_3
    :goto_2
    if-eqz v2, :cond_8

    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/Call;)V

    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->clear()V

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->schedule()V

    goto :goto_3
.end method


# virtual methods
.method public cancelInSecCall()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/SecStatusBarNotifier;->cancelInCall()V

    :cond_0
    return-void
.end method

.method public memoryFullAnswerMemoNotification()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/SecStatusBarNotifier;->memoryFullAnswerMemoNotification()V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const-string v0, "onStateChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public setBlockToUpdate(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecStatusBarNotifier;->setBlockToUpdate(Z)V

    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/SecStatusBarNotifier;->tearDown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;

    :cond_0
    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSecStatusBarNotifier:Lcom/android/incallui/SecStatusBarNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SecStatusBarNotifier;->updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
