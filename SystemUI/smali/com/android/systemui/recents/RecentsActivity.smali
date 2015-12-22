.class public Lcom/android/systemui/recents/RecentsActivity;
.super Lcom/android/systemui/recents/RecentsSynchronizerActivity;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
.implements Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnTouchShortcutIcon;,
        Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchGoogleButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;,
        Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;,
        Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;
    }
.end annotation


# static fields
.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final ASSIST_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final CONTROL_PANEL_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.controlpanel.activity.JobManagerActivity"

.field private static final CONTROL_PANEL_PACKAGE:Ljava/lang/String; = "com.sec.android.app.controlpanel"

.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field private static final GOOGLEBUTTON_3RDAPP:I = 0x2

.field private static final GOOGLEBUTTON_DEFAULT:I = 0x0

.field private static final GOOGLEBUTTON_NONE:I = 0x3

.field private static final GOOGLEBUTTON_SEARCH:I = 0x1

.field private static final MAX_NUM_SHORTCUT_BUTTONS:I = 0x4

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern;

.field private static final TASK_MANAGER_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

.field private static final TASK_MANAGER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.taskmanager"

.field private static mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

.field private static mScreenPinningRequestSubDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

.field private static mStatusBarManager:Landroid/app/StatusBarManager;


# instance fields
.field public TAG:Ljava/lang/String;

.field private isFolderDevice:Z

.field private mAppListShadowDistance:F

.field private mAppListShadowOpacity:F

.field private mAppListStrokeOpacity:F

.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mBlockBackKeyEvent:Z

.field mCanDismissRecents:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

.field mDismissRecents:Z

.field public mDisplay:Landroid/view/Display;

.field public mDisplayId:I

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishByCloseAllButton:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field mKioskModeEnabled:Z

.field mLastTabKeyEventTime:J

.field private mMultiWindowSettingObserver:Landroid/database/ContentObserver;

.field mNeedDarkFont:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field mRecentsButtons:Landroid/view/View;

.field private mRecentsDivider02:Landroid/widget/LinearLayout;

.field private mRecentsGoogleButton:Landroid/view/View;

.field mRecentsLaunchButton:Landroid/view/View;

.field mRecentsRemoveAllButton:Landroid/view/View;

.field mRecentsShort:Landroid/view/View;

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutComponentNames:[Ljava/lang/String;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mUPSMObserver:Landroid/database/ContentObserver;

.field private mlockToAppObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/RecentsActivity;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;-><init>()V

    const-string v0, "Recents_RecentsActivity"

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mNeedDarkFont:Z

    iput v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplay:Landroid/view/Display;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissRecents:Z

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mCanDismissRecents:Z

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$5;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/RecentsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isTaskManagerInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/RecentsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isControlPanelInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/RecentsActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recents/RecentsActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method private checkAssistAppIsInstalled()I
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    :try_start_0
    const-string v4, "anindya"

    const-string v5, "here"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isControlPanelInstalled()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.controlpanel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "CONTROL_PANEL_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEnableEmergencyMode(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isKnoxLauncherMode()Z
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isTaskManagerInstalled()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.taskmanager"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "TASK_MANAGER_PACKAGE not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recents/RecentsActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recents/RecentsActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static notifyRecentPanelVisiblity(Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p0}, Landroid/app/StatusBarManager;->notifyRecentPanelVisiblity(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Recents_RecentsActivity(not declared)"

    const-string v1, "mStatusBarManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$6;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "mobile_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$7;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$7;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$8;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$8;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$9;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/RecentsActivity$9;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    return-void
.end method

.method private registerRotationListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplay:Landroid/view/Display;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$10;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsActivity$10;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method private replaceGoogleButtonTextAndIcon(I)V
    .locals 3

    const v2, 0x7f020852

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0d03e0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->replaceGoogleButtonToSearchTextAndIcon()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->replaceGoogleButtonTo3rdAppTextAndIcon()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private replaceGoogleButtonTo3rdAppTextAndIcon()V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "search"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/SearchManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, -0x2

    invoke-virtual/range {v20 .. v23}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_1

    const-string v20, "com.android.systemui.action_assist_icon"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020858

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-boolean v20, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/Button;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " (NameNotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v18

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " (Resources.NotFoundException e) "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private replaceGoogleButtonToSearchTextAndIcon()V
    .locals 3

    const v2, 0x7f020858

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private unregisterRotationListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method


# virtual methods
.method addSearchBarAppWidgetView()V
    .locals 0

    return-void
.end method

.method bindSearchBarAppWidget()V
    .locals 0

    return-void
.end method

.method dismissRecentsToHome(Z)Z
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHome is getting called animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f050067

    const/16 v6, 0x8

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dismissRecentsToHomeRaw is getting called animated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowRecentApplicationShortCut:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v3, :cond_3

    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v2, p0, v8, v3, v8}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v4, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method inflateDebugOverlay()V
    .locals 0

    return-void
.end method

.method public onAltTaskViewClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAltTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(ZZ)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreate is getting called mDisplayId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getDisplayId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "statusbar"

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/StatusBarManager;

    sput-object v10, Lcom/android/systemui/recents/RecentsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->folderTypeFeature(Landroid/content/Context;)I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c04cf

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v0, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    iput v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowDistance:F

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c04d0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v1, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    iput v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowOpacity:F

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c04ce

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v2, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    iput v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppListStrokeOpacity:F

    invoke-static {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    new-instance v10, Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;-><init>(Landroid/content/Context;)V

    sput-object v10, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    new-instance v10, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    sget v11, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    const v10, 0x7f04007f

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    const v10, 0x7f0e0287

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v11, 0x700

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    const v10, 0x7f0e0288

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewStub;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    const v10, 0x7f0e0289

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewStub;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    new-instance v10, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/SystemUIApplication;

    const-class v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10, v11}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    new-instance v10, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v10, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v10, :cond_8

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v10, :cond_6

    const v10, 0x7f0e0299

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const v10, 0x7f0e029a

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    const v10, 0x7f0e029e

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    :goto_1
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    if-eqz v10, :cond_1

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v10, :cond_7

    const v10, 0x7f0e029c

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    const v10, 0x7f0e029d

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->checkAssistAppIsInstalled()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/recents/RecentsActivity;->replaceGoogleButtonTextAndIcon(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v11, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchGoogleButton;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    new-instance v11, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v11, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    new-instance v11, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v11, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    new-instance v11, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->V_PROJECT:Z

    if-nez v10, :cond_2

    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    if-eqz v10, :cond_3

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setHoverPopupType(I)V

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v5}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->registerContentObserver()V

    :try_start_0
    const-string v10, "ambientRatio"

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    if-eqz v10, :cond_4

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v10, v10, 0x400

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_4
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v10, v10, 0x42

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-virtual {v9, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_6
    const v10, 0x7f0e029f

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const v10, 0x7f0e02a0

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    const v10, 0x7f0e02a4

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    goto/16 :goto_1

    :cond_7
    const v10, 0x7f0e02a2

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsGoogleButton:Landroid/view/View;

    const v10, 0x7f0e02a3

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDivider02:Landroid/widget/LinearLayout;

    goto/16 :goto_2

    :cond_8
    const v10, 0x7f0e02a5

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    const v10, 0x7f0e00c5

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10, v3}, Lcom/android/systemui/recents/views/RecentsView;->setCloseAllButton(Landroid/view/View;)V

    const v10, 0x7f0e028b

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    goto/16 :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_4

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public onDebugModeTriggered()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/RecentsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "Enabled"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please restart Recents now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    :cond_3
    const-string v1, "Disabled"

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterContentObserver()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    const/4 v3, 0x0

    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v2, p0, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v3, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz v1, :cond_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :sswitch_1
    iget-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusTask()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    :sswitch_2
    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusTask()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    :sswitch_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsLaunchButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x3d -> :sswitch_0
        0x43 -> :sswitch_4
        0x70 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->isFolderDevice:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusTask()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent is getting called mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    sget-object v0, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    invoke-virtual {v0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/high16 v3, 0x100000

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsUPSMEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isKnoxLauncherMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissRecents:Z

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mCanDismissRecents:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScreenPinningRequest()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.systemui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "onScreenPinningRequest - topActivity is RecentsActivity"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/systemui/recents/RecentsActivity;->mScreenPinningRequestDialog:Lcom/android/systemui/recent/ScreenPinningRequestDialog;

    invoke-virtual {v3}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->showPrompt()V

    goto :goto_0
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 25

    invoke-super/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onStart()V

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "onStart is getting called "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v21, "action_hide_recents_activity"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v21, "action_toggle_recents_activity"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v21, "action_start_enter_animation"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mShowRecentApplicationShortCut:Z

    if-eqz v21, :cond_4

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v15, v0, [Landroid/widget/LinearLayout;

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v14, v0, [Landroid/widget/ImageView;

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v22, 0x0

    const v21, 0x7f0e028d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v15, v22

    const/16 v22, 0x1

    const v21, 0x7f0e0290

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v15, v22

    const/16 v22, 0x2

    const v21, 0x7f0e0293

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v15, v22

    const/16 v22, 0x3

    const v21, 0x7f0e0296

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    aput-object v21, v15, v22

    const/16 v22, 0x0

    const v21, 0x7f0e028e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v14, v22

    const/16 v22, 0x1

    const v21, 0x7f0e0291

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v14, v22

    const/16 v22, 0x2

    const v21, 0x7f0e0294

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v14, v22

    const/16 v22, 0x3

    const v21, 0x7f0e0297

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    aput-object v21, v14, v22

    const/16 v22, 0x0

    const v21, 0x7f0e028f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v16, v22

    const/16 v22, 0x1

    const v21, 0x7f0e0292

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v16, v22

    const/16 v22, 0x2

    const v21, 0x7f0e0295

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v16, v22

    const/16 v22, 0x3

    const v21, 0x7f0e0298

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    aput-object v21, v16, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v21, Lcom/android/systemui/recents/RecentsActivity;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_3

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v8, v0, :cond_3

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v8

    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v9, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    if-eqz v13, :cond_2

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v13, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_1

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    aget-object v21, v15, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    aget-object v21, v15, v8

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setClickable(Z)V

    aget-object v21, v15, v8

    new-instance v22, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v21, v16, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x5a

    const/16 v24, 0x5a

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    aget-object v21, v14, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-object v21, v14, v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    aget-object v21, v14, v8

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v21, v14, v8

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setPressed(Z)V

    aget-object v21, v14, v8

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setClickable(Z)V

    aget-object v21, v14, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->clearFocus()V

    aget-object v21, v14, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const/16 v22, 0xff

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    aget-object v21, v14, v8

    new-instance v22, Lcom/android/systemui/recents/RecentsActivity$OnTouchShortcutIcon;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnTouchShortcutIcon;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    aget-object v21, v14, v8

    new-instance v22, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v11, v11, 0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_0

    aget-object v21, v15, v8

    aget-object v22, v15, v6

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    aget-object v21, v15, v6

    aget-object v22, v15, v8

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    :cond_0
    move v6, v8

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_2
    aget-object v21, v15, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const v21, 0x7f0e028c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    :cond_5
    return-void
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/systemui/recents/RecentsSynchronizerActivity;->onStop()V

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "onStop is getting called "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1, v4}, Lcom/android/systemui/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromMultiWindowRecent:Z

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onUserInteraction()V

    return-void
.end method

.method public performAllTaskViewsDismissed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAllTaskViewsDismissed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public performDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public performDismissRecentsToCloseAll(ZZ)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissRecentsToCloseAll is getting called animated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllButton:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v1, p0, v5, v2, v5}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v3, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    invoke-direct {v3, v1, p2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->startCloseAllRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllButton:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method public performDismissRecentsToFocusedTaskOrHome(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/RecentsActivity;->performDismissRecentsToFocusedTaskOrHome(ZZZ)Z

    move-result v0

    return v0
.end method

.method public performDismissRecentsToFocusedTaskOrHome(ZZZ)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v5, "dismissRecentsToFocusedTaskOrHome is getting called"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayId:I

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissRecents:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mCanDismissRecents:Z

    if-eqz v4, :cond_3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissRecents:Z

    :cond_3
    if-nez p3, :cond_4

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->isCascadeRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    move v2, v3

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    move v2, v3

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v5, "moveTaskToBack on performDismissRecentsToFocusedTaskOrHome"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    move v2, v3

    goto :goto_0
.end method

.method public performTaskViewClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refreshSearchWidget()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    return-void
.end method

.method protected requestFocusNextTask()V
    .locals 0

    return-void
.end method

.method public unregisterContentObserver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mMultiWindowSettingObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mUPSMObserver:Landroid/database/ContentObserver;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPrivateModeObserver:Landroid/database/ContentObserver;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mlockToAppObserver:Landroid/database/ContentObserver;

    :cond_3
    return-void
.end method

.method updateMainRecentsLayout(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMainRecentsLayout is getting called : allTaskRemoved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method updateRecentsTasks(Landroid/content/Intent;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "updateRecentsTasks is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->recentsHiddenCompleted:Z

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v15

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/systemui/recents/AlternateRecentsComponent;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v17

    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V

    :cond_1
    new-instance v14, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v14}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    iput v3, v14, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    iput v3, v14, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    iput v3, v14, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v14}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v18

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v9

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v19, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider2/KioskMode"

    const-string v5, "isTaskManagerAllowed"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v5, v0}, Lcom/android/systemui/recents/RecentsActivity;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    const/4 v3, -0x1

    if-eq v12, v3, :cond_4

    const/4 v3, 0x1

    if-eq v12, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "isKioskMode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v9, :cond_5

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    new-instance v10, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v5, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v3, :cond_6

    const v3, 0x7f050077

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v4, :cond_7

    const v4, 0x7f050078

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10, v3}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    new-instance v3, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    const v4, 0x7f050074

    const v5, 0x7f050076

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v4}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mFinishByCloseAllButton:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    const/4 v11, 0x0

    :goto_4
    move/from16 v0, v23

    if-ge v11, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v13, v0, :cond_3

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    const v3, 0x7f050073

    goto/16 :goto_2

    :cond_7
    const v4, 0x7f050075

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "launchedWithNoRecentTasks is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0e02a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "need_dark_font"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mNeedDarkFont:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mNeedDarkFont:Z

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowDistance:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowOpacity:F

    move/from16 v25, v0

    sub-float v7, v7, v25

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    :goto_8
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/recents/RecentsActivity;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    if-eqz v3, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->checkAssistAppIsInstalled()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->replaceGoogleButtonTextAndIcon(I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->mIsContainerOnlyMode:Z

    return-void

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_10
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListStrokeOpacity:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowDistance:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x1000000

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mAppListShadowOpacity:F

    move/from16 v25, v0

    sub-float v7, v7, v25

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRemoveAllButton:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->hasSearchBar()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto/16 :goto_8

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mKioskModeEnabled:Z

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v4, "No launchedWithNoRecentTasks is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f050072

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_17
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowRecentApplicationShortCut:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f050072

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_9
.end method
