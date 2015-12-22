.class public Lcom/android/settings/LockscreenNotificationApplist;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockscreenNotificationApplist$Backend;,
        Lcom/android/settings/LockscreenNotificationApplist$AppData;,
        Lcom/android/settings/LockscreenNotificationApplist$AppRow;,
        Lcom/android/settings/LockscreenNotificationApplist$Row;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mAppArray:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/LockscreenNotificationApplist$AppData;",
            ">;"
        }
    .end annotation
.end field

.field public static mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field edit:Landroid/content/SharedPreferences$Editor;

.field private excludeKnoxApp:[Ljava/lang/String;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAllApps:Landroid/preference/SwitchPreference;

.field mAppPreference:Landroid/preference/SwitchPreference;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mLockscreen:Lcom/android/settings/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "LockNotificationApplist"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$Backend;

    invoke-direct {v0}, Lcom/android/settings/LockscreenNotificationApplist$Backend;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$3;

    invoke-direct {v0}, Lcom/android/settings/LockscreenNotificationApplist$3;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$6;

    invoke-direct {v0}, Lcom/android/settings/LockscreenNotificationApplist$6;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSections:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHideApp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.switchknoxI"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.knox.switchknoxII"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.containeragent2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.knox.shortcutsms"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->excludeKnoxApp:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$4;

    invoke-direct {v0, p0}, Lcom/android/settings/LockscreenNotificationApplist$4;-><init>(Lcom/android/settings/LockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$5;

    invoke-direct {v0, p0}, Lcom/android/settings/LockscreenNotificationApplist$5;-><init>(Lcom/android/settings/LockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockscreenNotificationApplist;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/LockscreenNotificationApplist;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/LockscreenNotificationApplist;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/LockscreenNotificationApplist;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->excludeKnoxApp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/LockscreenNotificationApplist;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHideApp:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/LockscreenNotificationApplist;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/LockscreenNotificationApplist;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/LockscreenNotificationApplist;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/LockscreenNotificationApplist;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockscreenNotificationApplist;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/LockscreenNotificationApplist;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/LockscreenNotificationApplist$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v5, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "LockNotificationApplist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    if-nez v4, :cond_2

    const-string v5, "LockNotificationApplist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v5, ""

    goto :goto_0

    :cond_2
    iget-object v5, v4, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    const-string v5, "LockNotificationApplist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings/LockscreenNotificationApplist;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getEnabledItemCount()I
    .locals 7

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    sget-object v4, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    iget-object v5, v2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v6, v2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "*"

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    const-string v1, "*"

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    const-string v1, "**"

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getVisibilityString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v1, "show_content"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "hide_contents"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v1, "do_not_show_notifications"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/LockscreenNotificationApplist$Backend;)Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    .locals 5

    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    invoke-direct {v0}, Lcom/android/settings/LockscreenNotificationApplist$AppRow;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->banned:Z

    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->priority:Z

    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->sensitive:Z

    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->show:Z

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "LockNotificationApplist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    sget-boolean v1, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LockNotificationApplist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/LockscreenNotificationApplist;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/settings/LockscreenNotificationApplist;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v1, Lcom/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0017

    invoke-virtual {v1, v2}, Lcom/android/settings/IconResizer;->setIconSize(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1}, Lcom/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 13

    sget-boolean v8, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "LockNotificationApplist"

    const-string v9, "Refreshing apps..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v9

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget-object v8, v6, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v5, Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v8, v6, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v7, v6, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v6, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->first:Z

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_3

    monitor-exit v9

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v8, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget-object v8, v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10, v8}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget-object v8, v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v8}, Lcom/android/settings/LockscreenNotificationApplist;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget-object v12, v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget v8, v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v11, v12, v8}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v10, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean v8, v6, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->banned:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a1401

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Lcom/android/settings/LockscreenNotificationApplist$AppData;

    invoke-direct {v1, p0}, Lcom/android/settings/LockscreenNotificationApplist$AppData;-><init>(Lcom/android/settings/LockscreenNotificationApplist;)V

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget-object v8, v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v8, v1, Lcom/android/settings/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget v8, v8, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    iput v8, v1, Lcom/android/settings/LockscreenNotificationApplist$AppData;->uid:I

    sget-object v8, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    iget-object v10, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    if-eqz v8, :cond_7

    sget-boolean v8, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "LockNotificationApplist"

    const-string v9, "Restoring listView state"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    :cond_7
    sget-boolean v8, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "LockNotificationApplist"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Refreshed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " displayed items"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method private updateAllAppsPreference()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "lock_notification_all_apps"

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "notification_all_apps"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/LockscreenNotificationApplist$2;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenNotificationApplist$2;-><init>(Lcom/android/settings/LockscreenNotificationApplist;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method private updateDropdownList()V
    .locals 5

    const v4, 0x7f0a0de0

    const v3, 0x7f0a0ddf

    const v2, 0x7f0a0dde

    const-string v0, "set_visibility"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    if-nez v0, :cond_0

    const-string v0, "LockNotificationApplist"

    const-string v1, "Preference not found: set_visibility"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->updateLockscreenNotifications()V

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    new-instance v1, Lcom/android/settings/LockscreenNotificationApplist$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LockscreenNotificationApplist$1;-><init>(Lcom/android/settings/LockscreenNotificationApplist;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    if-nez v1, :cond_1

    const v2, 0x7f0a0de0

    :goto_1
    iput v2, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    iget-object v2, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    iget v3, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f0a0dde

    goto :goto_1

    :cond_2
    const v2, 0x7f0a0ddf

    goto :goto_1
.end method


# virtual methods
.method public isAllAppsCheckedState()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    sget-object v4, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;

    sget-object v4, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    iget-object v5, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v6, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-lez v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenNotificationApplist;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHideApp:Z

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "LockNotificationApplist"

    const-string v1, "Hide app notification list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHideApp:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->updateDropdownList()V

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->updateAllAppsPreference()V

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->loadAppsList()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    sget-boolean v0, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "LDST"

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getEnabledItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    sget-boolean v0, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockNotificationApplist"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    sget-object v3, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;

    sget-object v3, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    iget-object v4, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->setShowonSharedeLocked(Ljava/lang/String;IZ)Z

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenNotificationApplist;->setStatusPreference(Z)V

    sget-boolean v3, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings"

    const-string v5, "NFST"

    iget-object v6, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public setStatusPreference(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lock_notification_all_apps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
