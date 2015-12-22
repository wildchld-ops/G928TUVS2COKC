.class public Lcom/android/incallui/SecStatusBarNotifier;
.super Ljava/lang/Object;
.source "SecStatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecStatusBarNotifier$MakeNotificationCallback;,
        Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;
    }
.end annotation


# static fields
.field private static sIsSecWFCEnabled:Z


# instance fields
.field private mBgCallState:I

.field private mBlockToUpdate:Z

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private final mContext:Landroid/content/Context;

.field public mEmergencyNeedToChange:Z

.field private mFgCallState:I

.field private mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mIsE911OverVoLTE:Z

.field private mIsShowingNotification:Z

.field private mMakeNotificationCallback:Lcom/android/incallui/SecStatusBarNotifier$MakeNotificationCallback;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTimer:Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;

.field private mPersona:Landroid/os/PersonaManager;

.field private mPreviousAudioState:I

.field private mPreviousCalltype:I

.field private mPreviousEasyMode:Z

.field private mPreviousMuteState:Z

.field private mPreviousRecordingState:Z

.field private mPreviousSwisMode:Z

.field private mSavedContent:I

.field private mSavedContentTitle:Ljava/lang/String;

.field private mSavedIcon:I

.field private mSavedLargeIcon:Landroid/graphics/Bitmap;

.field private mSavedLargeIconText:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

.field private mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/SecStatusBarNotifier;->sIsSecWFCEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPersona:Landroid/os/PersonaManager;

    new-instance v1, Lcom/android/incallui/SecStatusBarNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecStatusBarNotifier$1;-><init>(Lcom/android/incallui/SecStatusBarNotifier;)V

    iput-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mIsShowingNotification:Z

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mBlockToUpdate:Z

    iput v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mFgCallState:I

    iput v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mBgCallState:I

    iput v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousCalltype:I

    iput v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedIcon:I

    iput v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedContent:I

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousEasyMode:Z

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousSwisMode:Z

    iput v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousAudioState:I

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousMuteState:Z

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousRecordingState:Z

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mEmergencyNeedToChange:Z

    new-instance v1, Lcom/android/incallui/SecStatusBarNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecStatusBarNotifier$2;-><init>(Lcom/android/incallui/SecStatusBarNotifier;)V

    iput-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    new-instance v1, Lcom/android/incallui/SecStatusBarNotifier$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecStatusBarNotifier$3;-><init>(Lcom/android/incallui/SecStatusBarNotifier;)V

    iput-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AccessoryEventHandler;->addListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-static {v4, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "IMS interface objects are null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v1, Lcom/android/incallui/SecStatusBarNotifier;->sIsSecWFCEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "SecWFC notification helper : instantiate"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mIsE911OverVoLTE:Z

    new-instance v1, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerHandlerForWfcRegistrationStateChage(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerObserver()V

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to register IMSListener to framework."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$102(Lcom/android/incallui/SecStatusBarNotifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mIsE911OverVoLTE:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/SecStatusBarNotifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mIsShowingNotification:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SecStatusBarNotifier;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/SecStatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/SecStatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method private declared-synchronized buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 31

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v12, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v4, v12, v0}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v15

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v12, 0x0

    invoke-static {v4, v12}, Lcom/android/incallui/InCallUtils;->getBgCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v16

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/SecStatusBarNotifier;->mBlockToUpdate:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBlockToUpdate : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/incallui/SecStatusBarNotifier;->mBlockToUpdate:Z

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    :try_start_2
    invoke-virtual {v15}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v15}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v27

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/SecStatusBarNotifier;->getIconToDisplay(Lcom/android/incallui/Call;)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecStatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/SecStatusBarNotifier;->getLargeIconTextToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/SecStatusBarNotifier;->getContentString(Lcom/android/incallui/Call;)I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecStatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v9

    const-wide/high16 v20, -0x8000000000000000L

    invoke-static {v15}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v13

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    :cond_3
    if-nez v27, :cond_5

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->showAll()V

    invoke-virtual {v15}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v30

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v24

    if-eqz v24, :cond_5

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    :cond_4
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1, v10}, Lcom/android/incallui/SecStatusBarNotifier;->showGreenBar(ZI)V

    move-object/from16 v4, p0

    move/from16 v12, p3

    invoke-direct/range {v4 .. v13}, Lcom/android/incallui/SecStatusBarNotifier;->checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;IIZI)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "support_mobilecarrier"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "skip buildAndSendNotification when carrier-phone mode"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecStatusBarNotifier;->cancelInCall()V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecStatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v26

    new-instance v29, Landroid/app/Notification;

    invoke-direct/range {v29 .. v29}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "headsup"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v29

    iput v5, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v29

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v29

    iput v4, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x3

    if-ne v10, v4, :cond_b

    invoke-virtual {v15}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v20

    const-string v4, "ctc_call_time_duration"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v23

    if-eqz v23, :cond_8

    invoke-virtual {v15}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v4

    const/4 v12, 0x2

    if-ne v4, v12, :cond_8

    invoke-virtual/range {v23 .. v23}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v20

    :cond_8
    :goto_1
    new-instance v14, Lcom/android/incallui/InCallQuickPanel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v12, 0x7f0400a5

    invoke-direct {v14, v4, v12}, Lcom/android/incallui/InCallQuickPanel;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Lcom/android/incallui/InCallQuickPanel;->initInCallQuickPanel(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/SecStatusBarNotifier;->mEmergencyNeedToChange:Z

    move/from16 v22, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-virtual/range {v14 .. v22}, Lcom/android/incallui/InCallQuickPanel;->updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v29

    iput-object v14, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v4, 0x2

    move-object/from16 v0, v29

    iput v4, v0, Landroid/app/Notification;->priority:I

    const/4 v4, 0x1

    move-object/from16 v0, v29

    iput v4, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/incallui/SecStatusBarNotifier;->setContentHiddenNotification(Lcom/android/incallui/Call;Lcom/android/incallui/Call;J)Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz p3, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v15}, Lcom/android/incallui/SecStatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V

    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v12, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v4, v12, v0}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/incallui/SecStatusBarNotifier;->sIsSecWFCEnabled:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v4}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/SecStatusBarNotifier;->mIsE911OverVoLTE:Z

    if-nez v4, :cond_a

    const-string v4, "SecWFC notification helper : set inCall notification minimum"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x2

    move-object/from16 v0, v29

    iput v4, v0, Landroid/app/Notification;->priority:I

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/SecStatusBarNotifier;->mBlockToUpdate:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBlockToUpdate : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/incallui/SecStatusBarNotifier;->mBlockToUpdate:Z

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-wide/16 v20, -0x1

    goto/16 :goto_1

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    invoke-static {v4, v12}, Lcom/android/incallui/SecStatusBarNotifier;->log(Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "check fullScreenIntent: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v12, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    invoke-static {v4, v12}, Lcom/android/incallui/SecStatusBarNotifier;->log(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecStatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v12, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v4, v12, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v4, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/incallui/SecStatusBarNotifier;->mIsShowingNotification:Z

    goto/16 :goto_0

    :catch_0
    move-exception v25

    const-string v4, "Error notifyAsUser Exception"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v4, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;IIZI)Z
    .locals 6

    if-eqz p5, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p5, :cond_d

    iget-object v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v4, :cond_d

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedIcon:I

    if-ne v4, p1, :cond_3

    iget v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedContent:I

    if-ne v4, p2, :cond_3

    iget v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mFgCallState:I

    if-ne v4, p6, :cond_3

    iget v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mBgCallState:I

    if-ne v4, p7, :cond_3

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedLargeIconText:Ljava/lang/String;

    if-eqz v4, :cond_2

    if-eqz p4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedLargeIconText:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousCalltype:I

    if-eq v4, p9, :cond_e

    :cond_3
    const/4 v3, 0x1

    :goto_1
    if-eqz p8, :cond_4

    const-string v4, "Forcing full screen inten"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/SecStatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    :cond_4
    iget-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mIsShowingNotification:Z

    if-nez v4, :cond_5

    const-string v4, "Showing notification for first time."

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/SecStatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    :cond_5
    iget v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousAudioState:I

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousMuteState:Z

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v5

    if-eq v4, v5, :cond_7

    :cond_6
    const-string v4, "need update Audio Mode."

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/SecStatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    :cond_7
    const-string v4, "voice_call_recording"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v1, 0x1

    :goto_2
    iget-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousRecordingState:Z

    if-eq v4, v1, :cond_8

    const/4 v3, 0x1

    :cond_8
    iput-boolean v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousRecordingState:Z

    :cond_9
    iget-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousEasyMode:Z

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v5

    if-eq v4, v5, :cond_a

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousEasyMode:Z

    :cond_a
    const-string v4, "support_swis"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousSwisMode:Z

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSwisMode()Z

    move-result v5

    if-eq v4, v5, :cond_b

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSwisMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousSwisMode:Z

    :cond_b
    const-string v4, "update_video_quickpanel_text"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    const-string v4, "update_video_quickpanel_text"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/SecStatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    const-string v4, "update_video_quickpanel_text"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    :cond_c
    iput p1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedIcon:I

    iput p2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedContent:I

    iput p6, p0, Lcom/android/incallui/SecStatusBarNotifier;->mFgCallState:I

    iput p7, p0, Lcom/android/incallui/SecStatusBarNotifier;->mBgCallState:I

    iput-object p3, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedLargeIconText:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/incallui/SecStatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v4

    iput v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousAudioState:I

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousMuteState:Z

    iput p9, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPreviousCalltype:I

    if-eqz v3, :cond_10

    const-string v4, "Data changed.  Showing notification"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/SecStatusBarNotifier;->log(Ljava/lang/String;Z)V

    :goto_3
    return v3

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    :cond_10
    const-string v4, "Data changed.  Not Showing notification"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/SecStatusBarNotifier;->log(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method private configureFullScreenIntent(Landroid/app/Notification;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V
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

    iput-object p2, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

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

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZZ)Landroid/content/Intent;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "SecStatusBarNotifier"

    const-string v4, "createLaunchPendingIntent() - NullPointerException"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

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

.method private getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

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

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getIconToDisplay(Lcom/android/incallui/Call;)I
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    const/high16 v2, 0x200000

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_0

    const v2, 0x7f02024b

    :goto_0
    return v2

    :cond_0
    if-eqz v0, :cond_1

    const v2, 0x7f020246

    goto :goto_0

    :cond_1
    const v2, 0x7f020247

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    const v2, 0x7f020244

    goto :goto_0

    :cond_3
    const v2, 0x7f020245

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const v2, 0x7f02024a

    goto :goto_0

    :cond_5
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    if-nez v2, :cond_6

    const v2, 0x7f020248

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const v2, 0x7f020249

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    const v2, 0x7f020242

    goto :goto_0

    :cond_8
    const v2, 0x7f020243

    goto :goto_0
.end method

.method private getKnoxKeyguardShowState()Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecStatusBarNotifier;->getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v2

    if-nez v2, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-virtual {v2, v6}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    invoke-virtual {v4}, Landroid/content/pm/PersonaInfo;->getId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getKnoxKeyguardShowState() getKeyguardShowState="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " userId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private getLargeIconTextToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02031a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a011e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    invoke-static {v2, v0}, Lcom/android/incallui/InCallUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    iget-boolean v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-boolean v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLargeIconToDisplay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLargeIconToDisplay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPersona:Landroid/os/PersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "SecStatusBarNotifier"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setContentHiddenNotification(Lcom/android/incallui/Call;Lcom/android/incallui/Call;J)Landroid/app/Notification;
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lcom/android/incallui/SecMiniController;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400b1

    invoke-direct {v1, v2, v3}, Lcom/android/incallui/SecMiniController;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecMiniController;->initSecMiniController(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/incallui/SecMiniController;->updateSecMiniController(Lcom/android/incallui/Call;Lcom/android/incallui/Call;J)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method private showGreenBar(ZI)V
    .locals 3

    const/4 v1, 0x3

    const-string v0, "not_show_call_view_statusbar"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mFgCallState:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mFgCallState:I

    if-eq v0, p2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    if-ne p2, v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGreenBar = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/16 v0, 0x8

    if-ne p2, v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto/16 :goto_0
.end method

.method private showNotification(Lcom/android/incallui/Call;Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/SecStatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/SecStatusBarNotifier$MakeNotificationCallback;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/incallui/SecStatusBarNotifier$MakeNotificationCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/incallui/SecStatusBarNotifier$MakeNotificationCallback;-><init>(Lcom/android/incallui/SecStatusBarNotifier;Z)V

    iput-object v3, p0, Lcom/android/incallui/SecStatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/SecStatusBarNotifier$MakeNotificationCallback;

    :cond_1
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v3, Lcom/android/incallui/SecStatusBarNotifier$MakeNotificationCallback;

    invoke-direct {v3, p0, v2}, Lcom/android/incallui/SecStatusBarNotifier$MakeNotificationCallback;-><init>(Lcom/android/incallui/SecStatusBarNotifier;Z)V

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/SecStatusBarNotifier$MakeNotificationCallback;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_1
.end method

.method private updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "support_mobilecarrier"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const-string v3, "do not updateInCallNotification when carrier-phone mode"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecStatusBarNotifier;->cancelInCall()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/incallui/SecStatusBarNotifier;->log(Ljava/lang/String;Z)V

    const/4 v4, 0x0

    invoke-static {p3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v4, :cond_4

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v4, :cond_8

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v4

    if-nez v4, :cond_8

    move v1, v2

    :goto_1
    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecStatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;

    invoke-interface {v4}, Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer$State;

    move-result-object v4

    sget-object v5, Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer$State;

    if-ne v4, v5, :cond_9

    :cond_5
    :goto_2
    if-eqz v2, :cond_a

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/SecStatusBarNotifier;->showNotification(Lcom/android/incallui/Call;Z)V

    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-nez v3, :cond_7

    if-nez v0, :cond_2

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/SecStatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;->clear()V

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_1

    :cond_9
    move v2, v3

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecStatusBarNotifier;->cancelInCall()V

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecStatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer$State;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer$State;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecStatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/SecStatusBarNotifier$NotificationTimer;->schedule()V

    goto :goto_3
.end method


# virtual methods
.method public cancelInCall()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "cancelInCall()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iput-boolean v3, p0, Lcom/android/incallui/SecStatusBarNotifier;->mIsShowingNotification:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    :cond_0
    return-void
.end method

.method public makeNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/SecStatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/incallui/SecStatusBarNotifier$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/incallui/SecStatusBarNotifier$4;-><init>(Lcom/android/incallui/SecStatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :try_start_0
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeNotification : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public memoryFullAnswerMemoNotification()V
    .locals 8

    const/4 v7, 0x0

    const-string v5, "SecStatusBarNotifier"

    const-string v6, "memoryFullAnswerMemoNotification"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.phone.Answermemo.SHOW_MEMO_LIST"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020151

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const v7, 0x7f0d039e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const v7, 0x7f0d039f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    const/16 v5, 0x3eb

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public needToShowAsFullScreen(Lcom/android/incallui/CallList;)Z
    .locals 15

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->getTopActivity()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    const-string v0, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.app.easylauncher.Launcher"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.launcher2.Launcher"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.app.launcher"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.launcher2.LauncherApplication"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "Launcher is top"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v0, "dcm_packagename_for_fullscreen_incoming_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-static {v0, v1}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "docomo LIVE UX Launcher is top"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.kidsmode"

    invoke-static {v0, v1}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "docomo kidmode is top"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.kids"

    invoke-static {v0, v1}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunningPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "docomo kidmode content is top"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "com.nttdocomo.android.mediaplayer"

    invoke-static {v0, v1}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "docomo mediaplayer is top"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/KeyguardManager;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "isKeyguardLocked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "!pm.isScreenOn()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "isVideoCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "isShowingInCallUi"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "isCoverClosed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/android/incallui/SecStatusBarNotifier;->getKnoxKeyguardShowState()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "KnoxKeyguard is top"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Easy mode on"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Easy mode Enhanced on"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "it needs to show call screen as full screen when Car mode is on"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isConnectedMirrorLink()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "it needs to show call screen as full screen when MirrorLink is enable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isCameraForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "isCameraForeground"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_11
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, " LGU is only FullScreen in incomingcall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_12
    const-string v0, "support_sync_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Searching SyncCall settings..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.kddi.android.evc.SettingsProvider/system"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v8, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v9, ""

    const/4 v14, 0x0

    :cond_13
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setting_use_synccall"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    if-ne v14, v0, :cond_14

    const/4 v8, 0x1

    :cond_14
    const-string v0, "setting_use_incoming_show_pu"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz v8, :cond_15

    const/4 v0, 0x1

    if-ne v14, v0, :cond_15

    const-string v0, "SyncCall \'Display the popup on an incoming call\' setting is ON."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_15
    :try_start_1
    const-string v0, "SyncCall \'Display the popup on an incoming call\' setting is OFF."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_16
    :goto_1
    if-eqz v6, :cond_17

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_17
    :goto_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "isEmergencyMode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_18
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1

    :cond_19
    const-string v0, "Null cursor or no count from kddi evc query."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v12

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem getting content resolver or performing kddi evc query."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_17

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v0

    :cond_1b
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->enabledKidsModeCallApp()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "enabledKidsModeCallApp"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1c
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarmodeHome()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "isCarmodeHome"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1d
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v11

    :try_start_4
    invoke-interface {v11}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "daydream isDreaming"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/SecStatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public setBlockToUpdate(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlockToUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mBlockToUpdate:Z

    return-void
.end method

.method public tearDown()V
    .locals 3

    const-string v1, "tearDown"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AccessoryEventHandler;->removeListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    sget-boolean v1, Lcom/android/incallui/SecStatusBarNotifier;->sIsSecWFCEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->unregisterObserver()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->deRegisterForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mImsListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->deRegisterForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to deregister IMSListener to framework."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/SecStatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)V
    .locals 1

    iput-boolean p3, p0, Lcom/android/incallui/SecStatusBarNotifier;->mEmergencyNeedToChange:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/SecStatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "do not updateNotificationAndLaunchIncomingCallUi when carrier-phone mode"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/incallui/SecStatusBarNotifier;->needToShowAsFullScreen(Lcom/android/incallui/CallList;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/SecTabletKeyguardBGService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/SecTabletInCallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0, v4, p1, p2}, Lcom/android/incallui/SecStatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->setFullScreenMode(Z)V

    invoke-direct {p0, v1, p1, p2}, Lcom/android/incallui/SecStatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->setFullScreenMode(Z)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/SecStatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/SecCallPopupService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6
    invoke-direct {p0, v4, p1, p2}, Lcom/android/incallui/SecStatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0
.end method
