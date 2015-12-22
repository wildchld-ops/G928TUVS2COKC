.class public Lcom/android/settings/notification/NotificationAppList;
.super Lcom/android/settings/PinnedHeaderListFragment;
.source "NotificationAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationAppList$Backend;,
        Lcom/android/settings/notification/NotificationAppList$AppRow;,
        Lcom/android/settings/notification/NotificationAppList$Row;,
        Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;,
        Lcom/android/settings/notification/NotificationAppList$ViewHolder;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private excludeKnoxApp:[Ljava/lang/String;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

.field private mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
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

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;

.field private mTextView:Landroid/widget/TextView;

.field private mUM:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotificationAppList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    new-instance v0, Lcom/android/settings/notification/NotificationAppList$1;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppList$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/PinnedHeaderListFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/notification/NotificationAppList$Backend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

    iput-boolean v2, p0, Lcom/android/settings/notification/NotificationAppList;->mHideApp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->hide_app_list:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->excludeKnoxApp:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/notification/NotificationAppList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAppList$2;-><init>(Lcom/android/settings/notification/NotificationAppList;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/notification/NotificationAppList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAppList$3;-><init>(Lcom/android/settings/notification/NotificationAppList;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationAppList;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationAppList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->excludeKnoxApp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationAppList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppList;->mHideApp:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationAppList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/NotificationAppList;)Lcom/android/settings/notification/NotificationAppList$Backend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/NotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/NotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAppList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/NotificationAppList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/NotificationAppList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/NotificationAppList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppList;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/notification/NotificationAppList;)Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/notification/NotificationAppList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationAppList;Lcom/android/settings/notification/NotificationAppList$AppRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAppList;->openAppNotificationSettingsForTablet(Lcom/android/settings/notification/NotificationAppList$AppRow;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/NotificationAppList;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

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
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v5, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "NotificationAppList"

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

    check-cast v4, Lcom/android/settings/notification/NotificationAppList$AppRow;

    if-nez v4, :cond_2

    const-string v5, "NotificationAppList"

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
    iget-object v5, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    const-string v5, "NotificationAppList"

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

    sget-object v6, Lcom/android/settings/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_4
    return-void
.end method

.method private callBlockAppNotifications()V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/notification/BlockNotificationList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/settings/notification/NotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/notification/NotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    return-void
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

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationAppList$Backend;)Lcom/android/settings/notification/NotificationAppList$AppRow;
    .locals 5

    new-instance v0, Lcom/android/settings/notification/NotificationAppList$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppList$AppRow;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->uid:I

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationAppList$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->banned:Z

    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationAppList$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->priority:Z

    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationAppList$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->sensitive:Z

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openAppNotificationSettingsForTablet(Lcom/android/settings/notification/NotificationAppList$AppRow;)V
    .locals 7

    const v3, 0x7f0a0de2

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app_package"

    iget-object v1, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_uid"

    iget v1, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "has_settings_intent"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "openAppNotificationSettingsForTablet from SettingsActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "NotificationAppList"

    const-string v1, "openAppNotificationSettingsForTablet from PreferenceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "NotificationAppList"

    const-string v1, "Not able to start Preference Panel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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

    sget-boolean v1, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NotificationAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/settings/notification/NotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v6, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "NotificationAppList"

    const-string v7, "Refreshing apps..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->clear()V

    iget-object v7, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v7

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/NotificationAppList$AppRow;

    iget-object v6, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v5, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->section:Ljava/lang/String;

    new-instance v3, Lcom/android/settings/notification/NotificationAppList$Row;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings/notification/NotificationAppList$Row;-><init>(Lcom/android/settings/notification/NotificationAppList$1;)V

    iput-object v5, v3, Lcom/android/settings/notification/NotificationAppList$Row;->section:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v6, v3}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v4, Lcom/android/settings/notification/NotificationAppList$AppRow;->first:Z

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "NotificationAppList"

    const-string v7, "Restoring listView state"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object v8, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    :cond_4
    sget-boolean v6, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "NotificationAppList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Refreshed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/NotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " displayed items"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;-><init>(Lcom/android/settings/notification/NotificationAppList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mAdapter:Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mUM:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0de2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->hide_app_list:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->hide_app_list:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/notification/NotificationAppList;->mHideApp:Z

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->hide_app_list:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->hide_app_notification_list:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Hide app notification list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppList;->mHideApp:Z

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationAppList;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const v2, 0x7f0a15ea

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040130

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationAppList;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppList;->callBlockAppNotifications()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onPause()V

    sget-boolean v0, Lcom/android/settings/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mListViewState:Landroid/os/Parcelable;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAppList;->loadAppsList()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/PinnedHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mUM:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAppList;->setPinnedHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
