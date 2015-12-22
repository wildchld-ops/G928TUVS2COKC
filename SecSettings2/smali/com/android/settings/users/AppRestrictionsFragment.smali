.class public Lcom/android/settings/users/AppRestrictionsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;,
        Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;,
        Lcom/android/settings/users/AppRestrictionsFragment$IncludeAppInfo;,
        Lcom/android/settings/users/AppRestrictionsFragment$ExcludeAppInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppList:Landroid/preference/PreferenceGroup;

.field private mAppListChanged:Z

.field private mAppLoadingTask:Landroid/os/AsyncTask;

.field private mClickedAppPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field private mCustomRequestCode:I

.field private mCustomRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/AlertDialog;

.field mExcludeAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field mIncludeAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNewUser:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageObserver:Landroid/content/BroadcastReceiver;

.field mRelatedPackageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRestrictedProfile:Z

.field mSelectedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mSubordinateAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSysPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mUser:Landroid/os/UserHandle;

.field private mUserApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserBackgrounding:Landroid/content/BroadcastReceiver;

.field protected mUserManager:Landroid/os/UserManager;

.field private mVisibleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mClickedAppPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIncludeAppInfoList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRelatedPackageList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSubordinateAppList:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/AppRestrictionsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppsStates()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mClickedAppPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment;->appPrefChanged(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->fetchAndMergeApps()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->populateApps()V

    return-void
.end method

.method private addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v9, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addSystemApps() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x2200

    invoke-virtual {v7, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v2, 0x1

    if-nez v9, :cond_3

    and-int/lit16 v9, v2, 0x80

    if-eqz v9, :cond_2

    :cond_3
    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->isExcludeForSamsung(Landroid/content/pm/ResolveInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x4

    if-eq v1, v9, :cond_4

    const/4 v9, 0x2

    if-ne v1, v9, :cond_5

    :cond_4
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v6, v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    :cond_5
    new-instance v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v4}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    iget-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    if-nez v9, :cond_6

    iget-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    :cond_6
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addSystemImes(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->isSystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private appPrefChanged(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;ZLjava/lang/String;)V
    .locals 6

    invoke-virtual {p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1000(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v0, p1, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->appPrefChanged(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;ZLjava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRelatedPackageList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    iget-boolean v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    return-void
.end method

.method private applyUserAppState(Ljava/lang/String;Z)V
    .locals 6

    const/high16 v4, 0x800000

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x2000

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    :cond_1
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    sget-object v2, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhiding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    sget-object v2, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninstalling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    sget-object v2, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hiding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private applyUserAppsStates()V
    .locals 7

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    const-string v6, "Cannot apply application restrictions on another user!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private disableUiForPackage(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private fetchAndMergeApps()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/users/AppRestrictionsFragment;->addSystemImes(Ljava/util/Set;)V

    new-instance v14, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v8}, Lcom/android/settings/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/android/settings/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    const/16 v19, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x800000

    and-int v19, v19, v20

    if-eqz v19, :cond_2

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_3

    new-instance v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v11}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v19

    goto/16 :goto_0

    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    const/16 v19, 0x2000

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x800000

    and-int v19, v19, v20

    if-eqz v19, :cond_5

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_6

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_6

    new-instance v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v11}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_6
    :try_start_2
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "fetchAndMergeApps() : requiredAccountType : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / app name : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v19

    goto/16 :goto_2

    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    if-eqz v13, :cond_8

    const/16 v19, 0x2000

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x800000

    and-int v19, v19, v20

    if-eqz v19, :cond_9

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_9

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_9

    new-instance v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v11}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$1;)V

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_5
    if-ltz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    sget-object v19, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "fetchAndMergeApps() Remove dupes : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_b
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    goto :goto_7

    :cond_d
    iget-object v0, v11, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catch_4
    move-exception v19

    goto/16 :goto_3

    :catch_5
    move-exception v19

    goto/16 :goto_1
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object p3, p1, v0

    :cond_0
    return-object p3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return v0
.end method

.method private getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v2, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppEnabledForUser() : PackageInfo flags : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x800000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/high16 v2, 0x8000000

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isExcludeForSamsung(Landroid/content/pm/ResolveInfo;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_2

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private makeExcludeAppList()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.android.documentsui"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "wifi"

    const-string v2, "com.android.settings.Settings$WifiApSettingsActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.android.contacts"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.app.container"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.yosemite.tab"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.bridge"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.knox.rcp.components"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.shortcuti"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.shortcutii"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.shortcutsms"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.switcher"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.samsung.knox.kss"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.switchknoxI"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.switchknoxII"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.knoxmodeswitcher"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.containeragent2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.sec.knox.knoxsetupwizardclient"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "Samsung KNOX apps"

    const-string v2, "com.sec.android.app.samsungapps.KnoxAppsMainActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mExcludeAppInfoList:Ljava/util/HashMap;

    const-string v1, "com.android.stk"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeRelatedPackageList()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRelatedPackageList:Ljava/util/HashMap;

    const-string v1, "com.hancom.androidpc.viewer.launcher"

    const-string v2, "com.hancom.androidpc.appwidget"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRelatedPackageList:Ljava/util/HashMap;

    const-string v1, "com.samsung.everglades.video"

    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRelatedPackageList:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.episodes"

    const-string v2, "com.samsung.android.app.storyalbumwidget"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRelatedPackageList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.widgetapp.dualclockdigital"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeSubordinateAppList()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSubordinateAppList:Ljava/util/HashMap;

    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPanelOpen(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v3, v4}, Lcom/android/settings/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p1, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/RestrictionEntry;

    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getType()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :goto_1
    if-eqz v9, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setOrder(I)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "pkg_"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v13, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v13, 0x7f02007d

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setIcon(I)V

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1400(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v9, Landroid/preference/SwitchPreference;

    invoke-direct {v9, v3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v13, v9

    check-cast v13, Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    new-instance v9, Landroid/preference/ListPreference;

    invoke-direct {v9, v3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v12

    :cond_1
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v12}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v13, v9

    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v13, v9

    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v13, v9

    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v13, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v13, v9

    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v9, Landroid/preference/MultiSelectListPreference;

    invoke-direct {v9, v3}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object v13, v9

    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v13, v9

    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v10, v2, v7

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move-object v13, v9

    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v13, v11}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    move-object v13, v9

    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    const/4 v13, 0x1

    if-ne v4, v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private populateApps()V
    .locals 21

    sget-object v17, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "populateApps(), mVisibleApps size : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.GET_RESTRICTION_ENTRIES"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v15, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    iget-object v10, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-instance v9, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-object/from16 v0, p0

    invoke-direct {v9, v3, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    iget-object v0, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-object v0, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    iget-object v0, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    const v17, 0x7f0a0d68

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    if-nez v4, :cond_4

    if-eqz v8, :cond_c

    :cond_4
    iget-object v0, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    # invokes: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V
    invoke-static {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v11, 0x0

    const/16 v17, 0x2040

    :try_start_0
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v7, v10, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_4
    if-eqz v11, :cond_2

    iget-boolean v0, v11, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    if-nez v4, :cond_5

    if-eqz v8, :cond_2

    :cond_5
    if-eqz v4, :cond_6

    iget-object v0, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v9, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    const v17, 0x7f0a0d69

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    const v17, 0x7f0a0d6a

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(I)V

    :cond_8
    iget-object v0, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    if-eqz v8, :cond_e

    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRelatedPackageList:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object v17, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "populateApps() mSelectedPackages : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " p.isChecked() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_e
    add-int/lit8 v17, v5, 0x2

    mul-int/lit8 v17, v17, 0x64

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppsStates()V

    goto/16 :goto_0

    :catch_0
    move-exception v17

    goto/16 :goto_4
.end method

.method private removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1400(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1400(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v3}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v8

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showSubordinateAppDisablePopup(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v10, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, p1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a15e1

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a15e2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/users/AppRestrictionsFragment$8;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$8;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/users/AppRestrictionsFragment$7;

    invoke-direct {v5, p0}, Lcom/android/settings/users/AppRestrictionsFragment$7;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showSubordinateAppEnablePopup(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v11, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mClickedAppPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v5}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, p1

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a15df

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a15e0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    aput-object v1, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/users/AppRestrictionsFragment$6;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/users/AppRestrictionsFragment$6;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/users/AppRestrictionsFragment$5;

    invoke-direct {v6, p0}, Lcom/android/settings/users/AppRestrictionsFragment$5;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateAllEntries(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected getAppPreferenceGroup()Landroid/preference/PreferenceGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method getCircularUserIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/drawable/CircleFramedDrawable;->encircle(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    new-instance v2, Landroid/os/UserHandle;

    const-string v3, "user_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const v2, 0x7f070014

    invoke-virtual {p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroid/preference/PreferenceGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->makeExcludeAppList()V

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->makeRelatedPackageList()V

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->makeSubordinateAppList()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/os/UserHandle;

    const-string v3, "user_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    :cond_4
    const-string v2, "new_user"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-nez v3, :cond_0

    sget-object v4, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown requestCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    invoke-virtual {v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.extra.restrictions_list"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v4, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v0, v5}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v8, 0x7f1002ec

    if-ne v5, v8, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settings/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v5

    if-nez v5, :cond_0

    iput-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mClickedAppPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v8, "pkg_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSubordinateAppList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v8, "com.sec.android.app.camera"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSubordinateAppList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->showSubordinateAppDisablePopup(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    :goto_1
    invoke-direct {p0, v4, v5, v9}, Lcom/android/settings/users/AppRestrictionsFragment;->appPrefChanged(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSubordinateAppList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    const-string v8, "com.sec.android.gallery3d"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSubordinateAppList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSubordinateAppList:Ljava/util/HashMap;

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    aget-object v5, v1, v0

    invoke-direct {p0, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->showSubordinateAppEnablePopup(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_7

    :goto_3
    invoke-direct {p0, v4, v6, v9}, Lcom/android/settings/users/AppRestrictionsFragment;->appPrefChanged(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v6, v7

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$4;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$4;->start()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v14, ";"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, ";"

    invoke-direct {v13, v5, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkg_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/RestrictionEntry;

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v14, v10, v15}, Lcom/android/settings/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    :cond_1
    :goto_2
    const/4 v14, 0x1

    return v14

    :pswitch_1
    move-object/from16 v6, p1

    check-cast v6, Landroid/preference/ListPreference;

    move-object/from16 v14, p2

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v15

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    move-object/from16 v12, p2

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v14

    new-array v11, v14, [Ljava/lang/String;

    invoke-interface {v12, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3, v11}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v10}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    invoke-direct {p0, v2, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$3;->start()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user_id"

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
