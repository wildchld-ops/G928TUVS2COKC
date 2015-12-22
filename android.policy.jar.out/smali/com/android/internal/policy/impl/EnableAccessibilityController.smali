.class public Lcom/android/internal/policy/impl/EnableAccessibilityController;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"


# static fields
.field private static final ENABLE_ACCESSIBILITY_DELAY_MILLIS:I = 0x1770

.field public static final MESSAGE_ENABLE_ACCESSIBILITY:I = 0x3

.field public static final MESSAGE_SPEAK_ENABLE_CANCELED:I = 0x2

.field public static final MESSAGE_SPEAK_WARNING:I = 0x1

.field private static final SAMSUNG_SCREEN_READER:Ljava/lang/String; = "com.samsung.android.app.talkback"

.field private static final SCREEN_READER:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final SPEAK_WARNING_DELAY_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "EnableAccessibilityController"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFirstPointerDownX:F

.field private mFirstPointerDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private final mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

.field private mSecondPointerDownX:F

.field private mSecondPointerDownY:F

.field private final mTone:Landroid/media/Ringtone;

.field private final mTouchSlop:F

.field private final mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;-><init>(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    iput-object p1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/internal/policy/impl/EnableAccessibilityController$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController$2;-><init>(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTouchSlop:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/EnableAccessibilityController;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/EnableAccessibilityController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->turnOnTalkback(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mDestroyed:Z

    return v0
.end method

.method public static canEnableAccessibilityViaGesture(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mCanceled:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private enableAccessibility()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    const/4 v7, 0x1

    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v0, v11, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_6

    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    const/4 v8, 0x1

    :goto_4
    if-ge v8, v12, :cond_1

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v0, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_7

    const/4 v5, 0x1

    move-object v11, v3

    :cond_1
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2

    if-nez v7, :cond_8

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v16

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v17, "enabled_accessibility_services"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v10, v0, v6, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v17, "touch_exploration_granted_accessibility_services"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v10, v0, v6, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz v5, :cond_3

    const-string v17, "touch_exploration_enabled"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    const-string v17, "accessibility_script_injection"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "accessibility_enabled"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v15, Landroid/content/Intent;

    const-string v17, "com.samsung.settings.action.talkback_toggled"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0xfffff

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_8
    if-eqz v9, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v17

    goto :goto_5

    :catch_1
    move-exception v17

    goto/16 :goto_1
.end method

.method private getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3a

    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    :cond_0
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v1, v6

    invoke-virtual {v1, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.app.talkback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x1

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v3, "EnableAccessibilityController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private turnOffScreenReader(Landroid/content/Context;)V
    .locals 21

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOnOffScreenReader(context)"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x3a

    new-instance v15, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v9, v0, :cond_0

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    :cond_0
    const-string v17, "com.samsung.android.app.screenreader/com.samsung.android.app.screenreader.ScreenReaderService"

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v5, 0x1

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_4

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "enabled_accessibility_services"

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz v12, :cond_6

    move-object v6, v15

    invoke-virtual {v6, v12}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "accessibility_enabled"

    if-eqz v5, :cond_7

    const/16 v17, 0x1

    :goto_1
    const/16 v20, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "enabled_accessibility_samsung_screen_reader"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "direct_samsung_screen_reader"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_7
    const/16 v17, 0x0

    goto :goto_1
.end method

.method private turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    and-int/lit8 v17, p2, 0x20

    if-lez v17, :cond_0

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "assistant_menu"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v5, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.assistantmenu"

    const-string v19, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v17, p2, 0x10

    if-lez v17, :cond_2

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "air_motion_engine"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v3, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    const-string v17, "master_motion"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const-string v17, "air_motion_turn"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "air_motion_scroll"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v10, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    and-int/lit8 v17, p2, 0x8

    if-lez v17, :cond_3

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "air_view_master_onoff"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "pen_hovering"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "finger_air_view"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "finger_air_view_highlight"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v6, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    and-int/lit8 v17, p2, 0x40

    if-lez v17, :cond_4

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "access_control_use"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "access_control_enabled"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.accesscontrol"

    const-string v19, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x800

    move/from16 v17, v0

    if-lez v17, :cond_6

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "com.samsung.android.app.sounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    const-string v17, "sound_detector"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.settings.action.sound_detector"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.sounddetector"

    const-string v19, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    :cond_5
    :goto_0
    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    and-int/lit8 v17, p2, 0x4

    if-lez v17, :cond_7

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "pen_hovering"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_7
    and-int/lit8 v17, p2, 0x2

    if-lez v17, :cond_8

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x02"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "intelligent_sleep_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "intelligent_rotation_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "smart_pause"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v15, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_PAUSE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "isEnable"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v17, "smart_scroll"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v16, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "isEnable"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_8
    and-int/lit8 v17, p2, 0x1

    if-lez v17, :cond_9

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x01"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "multi_window_enabled"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_9
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-lez v17, :cond_a

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x80"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "pen_writing_buddy"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "air_button_onoff"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_a
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-lez v17, :cond_b

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x100"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "surface_palm_swipe"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_b
    const-string v17, "any_screen_enabled"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const-string v17, "sidesoftkey_switch"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_c
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-lez v17, :cond_d

    new-instance v4, Landroid/content/Intent;

    const-string v17, "android.settings.ALL_SOUND_MUTE"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "all_sound_off"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "mute"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - TurnOffAllSound in"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x4000

    move/from16 v17, v0

    if-lez v17, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->turnOffScreenReader(Landroid/content/Context;)V

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - Screen reader off in"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const v17, 0x8000

    and-int v17, v17, p2

    if-lez v17, :cond_f

    const-string v17, "universal_switch_enabled"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->turnOffUniversalInput(Landroid/content/Context;)V

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffTalkBackExclusiveOptions - Universal switch off in"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/high16 v17, 0x20000

    and-int v17, v17, p2

    if-lez v17, :cond_10

    const-string v17, "finger_magnifier"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffMagnifier - Magnifier off in"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/high16 v17, 0x40000

    and-int v17, v17, p2

    if-lez v17, :cond_11

    const-string v17, "people_stripe"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOffPeopleEdge - 0x40000"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :cond_12
    const-string v17, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "sound_detector"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v17, "doorbell_detector"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.doorbell_detector"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.settings.action.doorbell_detector"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.advsounddetector"

    const-string v19, "com.samsung.android.app.advsounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto/16 :goto_0
.end method

.method private turnOffUniversalInput(Landroid/content/Context;)V
    .locals 21

    const-string v17, "EnableAccessibilityController"

    const-string v18, "turnOnOffScreenReader(context)"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x3a

    new-instance v15, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v9, v0, :cond_0

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    :cond_0
    const-string v17, "com.samsung.android.universalswitch/com.samsung.android.universalswitch.SwitchControlService"

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v5, 0x1

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_4

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "enabled_accessibility_services"

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz v12, :cond_6

    move-object v6, v15

    invoke-virtual {v6, v12}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "accessibility_enabled"

    if-eqz v5, :cond_7

    const/16 v17, 0x1

    :goto_1
    const/16 v20, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "universal_switch_enabled"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_7
    const/16 v17, 0x0

    goto :goto_1
.end method

.method private turnOnTalkback(Landroid/content/Context;Ljava/lang/String;)V
    .locals 22

    const/16 v4, 0x3a

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".TalkBackService"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    new-instance v16, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v18, 0x3a

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    const/4 v13, 0x1

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_0

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v15, :cond_1

    if-nez v13, :cond_9

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_4

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "enabled_accessibility_services"

    const/16 v20, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v12, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz v12, :cond_6

    move-object/from16 v6, v16

    invoke-virtual {v6, v12}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    :cond_6
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.samsung.settings.action.talkback_toggled"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "accessibility_enabled"

    if-eqz v5, :cond_8

    const/16 v18, 0x1

    :goto_3
    const/16 v21, -0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_8
    const/16 v18, 0x0

    goto :goto_3

    :cond_9
    if-eqz v15, :cond_7

    const-string v18, "EnableAccessibilityController"

    const-string v19, "turnOnTalkback - keyguardLocked"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v18

    goto :goto_4

    :catch_1
    move-exception v18

    goto/16 :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mDestroyed:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownY:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mCanceled:Z

    if-eqz v4, :cond_1

    if-ne v0, v8, :cond_0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mCanceled:Z

    :cond_0
    :goto_0
    return v8

    :cond_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownX:F

    iget v7, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownY:F

    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownX:F

    iget v7, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownY:F

    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
