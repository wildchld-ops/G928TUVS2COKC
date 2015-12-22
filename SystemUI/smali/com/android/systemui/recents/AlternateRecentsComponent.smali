.class public Lcom/android/systemui/recents/AlternateRecentsComponent;
.super Ljava/lang/Object;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;,
        Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;,
        Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field public static final ACTION_HIDE_RECENTS_ACTIVITY:Ljava/lang/String; = "action_hide_recents_activity"

.field public static final ACTION_PROXY_NOTIFY_RECENTS_VISIBLITY_TO_OWNER:Ljava/lang/String; = "action_notify_recents_visibility_change"

.field public static final ACTION_START_ENTER_ANIMATION:Ljava/lang/String; = "action_start_enter_animation"

.field public static final ACTION_TOGGLE_RECENTS_ACTIVITY:Ljava/lang/String; = "action_toggle_recents_activity"

.field static final DB_RECENT_MENUKEY_DIALOG_CHECKED:Ljava/lang/String; = "recent_menukey_dialog_do_not_show"

.field public static final EXTRA_FROM_APP_FULL_SCREENSHOT:Ljava/lang/String; = "recents.thumbnail"

.field public static final EXTRA_FROM_APP_THUMBNAIL:Ljava/lang/String; = "recents.animatingWithThumbnail"

.field public static final EXTRA_FROM_HOME:Ljava/lang/String; = "recents.triggeredOverHome"

.field public static final EXTRA_FROM_MULTI_WINDOW_RECENT:Ljava/lang/String; = "recents.triggeredOverMultiWindowRecent"

.field public static final EXTRA_FROM_SEARCH_HOME:Ljava/lang/String; = "recents.triggeredOverSearchHome"

.field public static final EXTRA_FROM_TASK_ID:Ljava/lang/String; = "recents.activeTaskId"

.field public static final EXTRA_RECENTS_VISIBILITY:Ljava/lang/String; = "recentsVisibility"

.field public static final EXTRA_TRIGGERED_FROM_ALT_TAB:Ljava/lang/String; = "recents.triggeredFromAltTab"

.field public static final EXTRA_TRIGGERED_FROM_HOME_KEY:Ljava/lang/String; = "recents.triggeredFromHomeKey"

.field private static final SHOW_HELP_POPUP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Recents_AlternateRecentsComponent"

.field static mLock:Ljava/lang/Object; = null

.field static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan; = null

.field static sInstanceLoadPlans:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;",
            ">;"
        }
    .end annotation
.end field

.field static final sMinToggleDelay:I = 0x15e

.field public static final sRecentsActivity:Ljava/lang/String; = "com.android.systemui.recents.RecentsActivity"

.field public static final sRecentsAlternateProxyService:Ljava/lang/String; = "com.android.systemui.recents.RecentsAlternateProxyService"

.field static sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks; = null

.field public static final sRecentsPackage:Ljava/lang/String; = "com.android.systemui"

.field public static final sSubRecentsActivity:Ljava/lang/String; = "com.android.systemui.recents.SubRecentsActivity"

.field static final sToggleRecentsAction:Ljava/lang/String; = "com.android.systemui.recents.SHOW_RECENTS"


# instance fields
.field private DELAY_SHOW_RECENTMENU_HELPPOPUP:I

.field mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

.field mAlternateServiceConnected:Z

.field mBootCompleted:Z

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field mCanReuseTaskStackViews:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field private mConnection:Landroid/content/ServiceConnection;

.field mContext:Landroid/content/Context;

.field private mDisableAlertCheckBox:Landroid/widget/CheckBox;

.field mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

.field private mHelpHandler:Landroid/os/Handler;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastToggleTime:J

.field mNavBarHeight:I

.field mNavBarWidth:I

.field private mNumOfStartedAnimation:I

.field mProxyBroadcastReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

.field private mRecentHelpDialog:Landroid/app/AlertDialog;

.field mRecentsMultiUserReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;

.field mStartAnimationTriggered:Z

.field mStatusBarHeight:I

.field mSubConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mSystemInsets:Landroid/graphics/Rect;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTriggeredFromAltTab:Z

.field mWindowRect:Landroid/graphics/Rect;

.field private misAvailableHelpHub:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlans:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    iput-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    iput v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNumOfStartedAnimation:I

    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$11;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$12;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "AlternateRecentsComponent Constructor is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "action_notify_recents_visibility_change"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsOwnerEventProxyReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsMultiUserReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentsMultiUserReceiver:Lcom/android/systemui/recents/AlternateRecentsComponent$RecentsMultiUserChangedReceiver;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/recents/AlternateRecentsComponent;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNumOfStartedAnimation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    return-object v0
.end method

.method public static consumeInstanceLoadPlan(I)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlans:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    sget-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlans:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    return-object v0
.end method

.method static createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getHelpVersionCode()I
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const-string v3, "Recents_AlternateRecentsComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHelpVersionCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isEnableEmergencyMode(Landroid/content/Context;)Z
    .locals 9

    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    const-string v6, "Recents_AlternateRecentsComponent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEmergencyOrUPSM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method private makeRecentHelpPopup()V
    .locals 13

    const v12, 0x7f0e0434

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v11, 0x1

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getHelpVersionCode()I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v7, :cond_2

    const v7, 0x7f0400e3

    invoke-virtual {v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d04e2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d04ec

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/AlternateRecentsComponent$9;

    invoke-direct {v10, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$9;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-boolean v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    if-eqz v7, :cond_1

    if-eq v2, v11, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d04eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/AlternateRecentsComponent$10;

    invoke-direct {v10, p0, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent$10;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;I)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    :goto_2
    return-void

    :cond_2
    const v7, 0x7f0400e2

    invoke-virtual {v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    const v7, 0x7f0e0433

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    const v7, 0x7f0400e1

    invoke-virtual {v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0e0432

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/systemui/recents/AlternateRecentsComponent$8;

    invoke-direct {v8, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$8;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForVZW:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    const v7, 0x7f0e0431

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForVZW:Z

    if-eqz v7, :cond_5

    const v7, 0x7f0d04de

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRecentMenuStringForATT:Z

    if-eqz v7, :cond_6

    const v7, 0x7f0d04e1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_6
    if-eq v2, v11, :cond_7

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    if-nez v7, :cond_8

    :cond_7
    const v7, 0x7f0d04e0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_8
    const v7, 0x7f0d04dd

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d04e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d04db

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_2
.end method

.method public static notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V
    .locals 2
    .annotation build Lcom/android/systemui/recents/ProxyFromAnyToPrimaryUser;
    .end annotation

    const-string v1, "action_notify_recents_visibility_change"

    invoke-static {p0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "recentsVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static visibilityChanged(Z)V
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/RecentsComponent$Callbacks;->onVisibilityChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindToRecentsService()V
    .locals 5

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "bindToRecentsService is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/recents/RecentsAlternateProxyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method configurationChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadHeaderBarLayout(Z)V

    return-void
.end method

.method public dismissHelpPopup()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "dismissHelpPopup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;
    .locals 4

    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "getHomeTransitionActivityOptions is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f050063

    const v2, 0x7f050064

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f050061

    const v2, 0x7f050062

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;Z)Landroid/app/ActivityOptions;
    .locals 20

    const-string v4, "Recents_AlternateRecentsComponent"

    const-string v6, "getThumbnailTransitionActivityOptions is getting called"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v17 .. v17}, Lcom/android/systemui/recents/model/Task;-><init>()V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v4, v6

    float-to-int v15, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v15, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "any_screen_running"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    const/4 v13, 0x1

    :cond_0
    const/4 v4, 0x1

    if-eq v13, v4, :cond_1

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v12, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    if-eqz v14, :cond_2

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x4000000

    invoke-virtual {v14, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    move-object/from16 v11, p0

    invoke-static/range {v4 .. v11}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v6, 0x7f05005f

    const v7, 0x7f050060

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-static {v4, v6, v7, v8, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_0
.end method

.method getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9

    const-string v5, "Recents_AlternateRecentsComponent"

    const-string v6, "getThumbnailTransitionTransform is getting called"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v5, p3, :cond_2

    move-object v2, v1

    invoke-virtual {p4, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v5

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 4

    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "getUnknownTransitionActivityOptions is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const v1, 0x7f050065

    const v2, 0x7f050066

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method hideRecents(ZZ)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Recents_AlternateRecentsComponent"

    const-string v3, "onHideRecents is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v3, "action_hide_recents_activity"

    invoke-static {v2, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "recents.triggeredFromAltTab"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "recents.triggeredFromHomeKey"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnLongPressHome:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    :cond_1
    return-void
.end method

.method public initInSeperatedProcess()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackListener:Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackListener:Lcom/android/systemui/recents/AlternateRecentsComponent$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    return-void
.end method

.method isUserSetupComplete()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onAnimationStarted()V
    .locals 9

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStartAnimationTriggered:Z

    if-nez v0, :cond_0

    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v2, "onAnimationStarted is getting called"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNumOfStartedAnimation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNumOfStartedAnimation:I

    new-instance v4, Lcom/android/systemui/recents/AlternateRecentsComponent$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$7;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    iget v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNumOfStartedAnimation:I

    const/16 v2, 0x78

    if-le v0, v2, :cond_1

    iput v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNumOfStartedAnimation:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v2, "action_start_enter_animation"

    invoke-static {v0, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onBootCompleted(Z)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->initialize(Landroid/content/Context;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->isAppListLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadMultiWindowAppList()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on onBootCompleted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on onBootCompleted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$1;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCancelPreloadingRecents()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->configurationChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on configurationChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on configurationChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$6;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onHideRecents(ZZ)V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onHideRecents is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->hideRecents(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on hideRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on hideRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$3;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPreloadRecents()V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->preloadRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on preloadRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on preloadRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$5;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onShowNextAffiliatedTask()V
    .locals 2

    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "onShowNextAffiliatedTask is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRelativeAffiliatedTask(Z)V

    return-void
.end method

.method public onShowPrevAffiliatedTask()V
    .locals 2

    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "showRelativeAffiliatedTask is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRelativeAffiliatedTask(Z)V

    return-void
.end method

.method public onShowRecents(Z)V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onShowRecents is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->showRecents(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on showRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on showRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$2;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 5
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadHeaderBarLayout(Z)V

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V

    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getApplicationIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput-boolean v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    return-void
.end method

.method public onToggleRecents()V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "onToggleRecents is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateServiceConnected:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mAlternateService:Lcom/android/systemui/recents/IRecentsAlternateProxyService;

    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsAlternateProxyService;->toggleRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "RemoteException on toggleRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Recents_AlternateRecentsComponent"

    const-string v2, "Disconnected mAlternateService on toggleRecents"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/AlternateRecentsComponent$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent$4;-><init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method preloadRecents()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    sget-object v1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    return-void
.end method

.method reloadHeaderBarLayout(Z)V
    .locals 12

    const-string v0, "Recents_AlternateRecentsComponent"

    const-string v1, "reloadHeaderBarLayout is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    const v0, 0x1050011

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    const v0, 0x1050012

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarHeight:I

    const v0, 0x1050014

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->reloadSearchBarAppWidget(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    new-instance v8, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->removeAllViewsInLayout()V

    :cond_1
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v6

    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v6, v0, v1, v10}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getUntransformedTaskViewSize()Landroid/graphics/Rect;

    move-result-object v11

    const v0, 0x7f0c0362

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040087

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V

    return-void

    :cond_3
    iget v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    iget v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    goto/16 :goto_2

    :cond_6
    iget v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarWidth:I

    goto/16 :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_4

    :cond_8
    iget v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mStatusBarHeight:I

    goto :goto_6

    :cond_9
    iget v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mNavBarHeight:I

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040087

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    goto :goto_5
.end method

.method reloadSearchBarAppWidget(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0

    return-void
.end method

.method public setRecentsComponentCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 0

    sput-object p1, Lcom/android/systemui/recents/AlternateRecentsComponent;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    return-void
.end method

.method public showRecentHelpPopup()V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "Recents_AlternateRecentsComponent"

    const-string v11, "showRecentHelpPopup"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "recent_menukey_dialog_do_not_show"

    const/4 v12, -0x2

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_1

    move v4, v8

    :goto_0
    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_window_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    move v5, v8

    :goto_1
    if-nez v4, :cond_0

    if-nez v5, :cond_3

    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_0
    const-string v8, "Recents_AlternateRecentsComponent"

    const-string v9, "InformDialog isChecked"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_1
    move v4, v9

    goto :goto_0

    :cond_2
    move v5, v9

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    if-eqz v7, :cond_6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_5

    iput-boolean v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    const-string v6, "com.samsung.helphub"

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    iget v11, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iput-boolean v8, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->misAvailableHelpHub:Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    invoke-direct {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->makeRecentHelpPopup()V

    iget-object v9, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mHelpHandler:Landroid/os/Handler;

    invoke-static {v10, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    iget v10, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->DELAY_SHOW_RECENTMENU_HELPPOPUP:I

    int-to-long v10, v10

    invoke-virtual {v9, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3
.end method

.method showRecents(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    iget-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mBootCompleted:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method showRelativeAffiliatedTask(Z)V
    .locals 21

    const-string v17, "Recents_AlternateRecentsComponent"

    const-string v18, "showRelativeAffiliatedTask is getting called"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v13, :cond_3

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    iget-object v4, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz p1, :cond_4

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f05006c

    const v19, 0x7f05006b

    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    :goto_2
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    :cond_3
    if-nez v15, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_0

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05006a

    invoke-static/range {v18 .. v19}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f05006f

    const v19, 0x7f05006e

    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05006d

    invoke-static/range {v18 .. v19}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, v15, Lcom/android/systemui/recents/model/Task;->isActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v19, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_0
.end method

.method startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;I)V
    .locals 7

    const-string v4, "Recents_AlternateRecentsComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAlternateRecentsActivity with arg is getting called. displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Recents_AlternateRecentsComponent"

    const-string v5, "UserSetup is not Completed. So return"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez p4, :cond_1

    if-eqz p3, :cond_4

    :cond_1
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    iget-object v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz p1, :cond_5

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_2
    iput v4, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, p6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, p6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.systemui.recents.SHOW_RECENTS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromMultiWindowRecent:Z

    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    :cond_3
    const-string v4, "com.android.systemui"

    const-string v5, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_6

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mCanReuseTaskStackViews:Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, -0x1

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method startRecentsActivity()V
    .locals 4

    const-string v2, "Recents_AlternateRecentsComponent"

    const-string v3, "startRecentsActivity is getting called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    :cond_1
    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZI)V
    .locals 28

    const-string v4, "Recents_AlternateRecentsComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startRecentsActivity() : isTopTaskHome="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", displayId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;I)Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    sget-object v5, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-object/from16 v0, v23

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V

    sget-object v4, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_5

    const/16 v20, 0x1

    :goto_0
    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    if-eqz v20, :cond_6

    const/16 v27, 0x1

    :goto_1
    if-eqz v27, :cond_1

    new-instance v22, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct/range {v22 .. v22}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/recents/AlternateRecentsComponent;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;Z)Landroid/app/ActivityOptions;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v11, p3

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;I)V

    :cond_1
    :goto_2
    const-string v4, "Recents_AlternateRecentsComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startRecentsActivity() : useThumbnailTransition="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", displayId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v27, :cond_4

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->hasSearchBarAppWidget()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v24

    :goto_3
    if-eqz v24, :cond_2

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    :cond_2
    const/4 v8, 0x0

    if-eqz v21, :cond_3

    if-eqz v25, :cond_3

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v11, p3

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;I)V

    :cond_4
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resolveSearchAppWidget()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v24

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v6

    move-object/from16 v17, v10

    move/from16 v18, p3

    invoke-virtual/range {v11 .. v18}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;I)V

    goto :goto_4
.end method

.method toggleRecents()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mTriggeredFromAltTab:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->toggleRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method toggleRecentsActivity()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x15e

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Recents_AlternateRecentsComponent"

    const-string v4, "toggleRecentsActivity ->Recent is on the Top so dismiss it"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    const-string v4, "action_toggle_recents_activity"

    invoke-static {v3, v4}, Lcom/android/systemui/recents/AlternateRecentsComponent;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mLastToggleTime:J

    invoke-virtual {p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto :goto_0
.end method
