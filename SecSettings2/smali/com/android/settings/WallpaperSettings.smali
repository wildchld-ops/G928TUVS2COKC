.class public Lcom/android/settings/WallpaperSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WallpaperSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static activity:Landroid/app/Activity;


# instance fields
.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBothScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mHomeIntent:Landroid/content/Intent;

.field private mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSviewWindowWallpaper:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/WallpaperSettings$1;

    invoke-direct {v0}, Lcom/android/settings/WallpaperSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/WallpaperSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/android/settings/WallpaperSettings;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/WallpaperSettings;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/WallpaperSettings;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/WallpaperSettings;->mHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/WallpaperSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/WallpaperSettings;->mHomeIntent:Landroid/content/Intent;

    const v3, 0x10040

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/WallpaperSettings;->mAppList:Ljava/util/List;

    const v1, 0x7f0700b5

    invoke-virtual {p0, v1}, Lcom/android/settings/WallpaperSettings;->addPreferencesFromResource(I)V

    const-string v1, "homescreen_wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    const-string v1, "lockscreen_wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    const-string v1, "both_wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/WallpaperSettings;->mBothScreenWallpaper:Landroid/preference/PreferenceScreen;

    const-string v1, "sview_window"

    invoke-virtual {p0, v1}, Lcom/android/settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/WallpaperSettings;->mSviewWindowWallpaper:Landroid/preference/PreferenceScreen;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WallpaperSettings;->mBothScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "download_wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/WallpaperSettings;->mSviewWindowWallpaper:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    const-string v2, "sview_window"

    invoke-virtual {p0, v2}, Lcom/android/settings/WallpaperSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "false"

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/settings/WallpaperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v6, "isWallpaperChangeAllowed"

    invoke-static {v2, v5, v6, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v5, p0, Lcom/android/settings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    if-ne v0, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    if-ne v0, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/WallpaperSettings;->mBothScreenWallpaper:Landroid/preference/PreferenceScreen;

    if-ne v0, v3, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method
