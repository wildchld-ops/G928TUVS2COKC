.class public Lcom/android/settings/LaunchApplication;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LaunchApplication.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LaunchApplication$DefaultAppPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field mApplicationClickListener:Landroid/view/View$OnClickListener;

.field mClearClickListener:Landroid/view/View$OnClickListener;

.field private mHome:Landroid/preference/PreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefGroup:Landroid/preference/PreferenceGroup;

.field mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/LaunchApplication$DefaultAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/LaunchApplication$6;

    invoke-direct {v0}, Lcom/android/settings/LaunchApplication$6;-><init>()V

    sput-object v0, Lcom/android/settings/LaunchApplication;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/LaunchApplication$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LaunchApplication$1;-><init>(Lcom/android/settings/LaunchApplication;)V

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mApplicationClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/LaunchApplication$2;

    invoke-direct {v0, p0}, Lcom/android/settings/LaunchApplication$2;-><init>(Lcom/android/settings/LaunchApplication;)V

    iput-object v0, p0, Lcom/android/settings/LaunchApplication;->mClearClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LaunchApplication;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LaunchApplication;)Landroid/hardware/usb/IUsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LaunchApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateHomeApplicationSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/LaunchApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V

    return-void
.end method

.method private initSmsApplicationSetting()V
    .locals 14

    const/4 v13, 0x0

    const-string v10, "LaunchApplication"

    const-string v11, "initSmsApplicationSetting:"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    const-string v10, "LaunchApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initSmsApplicationSetting count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "com.bst.sync"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v0, v0, -0x1

    const-string v10, "LaunchApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initSmsApplicationSetting after count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-array v2, v0, [Ljava/lang/CharSequence;

    new-array v4, v0, [Ljava/lang/CharSequence;

    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v5, 0x0

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    const-string v10, "com.android.mms"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v13

    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v13

    const/4 v10, 0x0

    :try_start_0
    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v3, v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    :cond_3
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    const-string v10, "LaunchApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initSmsApplicationSetting package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "com.android.mms"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "com.bst.sync"

    iget-object v11, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_5
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v5

    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v5

    :try_start_1
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v13

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v2}, Lcom/android/settings/SmsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v4}, Lcom/android/settings/SmsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v3}, Lcom/android/settings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x2

    if-ge v0, v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v13}, Lcom/android/settings/SmsListPreference;->setEnabled(Z)V

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V

    return-void
.end method

.method private updateHomeApplicationSetting()V
    .locals 12

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "LaunchApplication"

    const-string v7, "updateSmsApplicationSetting:"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v7, 0x10000

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v8, "getDefaultApplicationInternal"

    new-array v9, v11, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v6, v7, v8, v9}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_3

    :goto_0
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v11, :cond_1

    iget-object v4, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private updateSmsApplicationSetting()V
    .locals 13

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "LaunchApplication"

    const-string v9, "updateSmsApplicationSetting:"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v8}, Lcom/android/settings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v2, 0x0

    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_0

    aget-object v8, v5, v2

    invoke-virtual {v4, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v10, "isApplicationSetToDefault"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    aput-object v4, v11, v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v8, v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_1

    move v3, v6

    :goto_1
    iget-object v8, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v8, v6}, Lcom/android/settings/SmsListPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v6, v2}, Lcom/android/settings/SmsListPreference;->setValueIndex(I)V

    iget-object v6, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v7, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v7}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/settings/SmsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v7, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v7}, Lcom/android/settings/SmsListPreference;->getEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/settings/SmsListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method buildDefaultApplicationList()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/LaunchApplication;->mPrefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v14

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_2

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v17

    invoke-virtual {v3, v15, v0, v7}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LaunchApplication;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v3, v7, v0}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    :goto_1
    :try_start_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    if-eqz v12, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v19, "CscFeature_Setting_ConfigOperatorCallService"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v19, "tphone"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com.skt.prod.phone"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v11

    const-string v3, "LaunchApplication"

    const-string v19, "mUsbManager.hasDefaults"

    move-object/from16 v0, v19

    invoke-static {v3, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v11

    const-string v3, "LaunchApplication"

    const-string v19, "IndexOutOfBounds exception occured"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v2, Lcom/android/settings/LaunchApplication$DefaultAppPreference;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;-><init>(Lcom/android/settings/LaunchApplication;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v3, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v19, "isApplicationSetToDefault"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    const/16 v21, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v4, v3, v0, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const/4 v3, 0x1

    if-ne v9, v3, :cond_4

    const/16 v16, 0x1

    :goto_3
    if-nez v16, :cond_5

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->setClearButtonStatus(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LaunchApplication;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_2
    move-exception v11

    :try_start_5
    const-string v3, "LaunchApplication"

    const-string v19, "Problem dealing with activity "

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v0, 0x7f0d000c

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0d001c

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f0d0017

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v11, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v11, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x7f0400e5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/settings/LaunchApplication;->addPreferencesFromResource(I)V

    const-string v1, "home"

    invoke-virtual {p0, v1}, Lcom/android/settings/LaunchApplication;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    const-string v1, "sms_application"

    invoke-virtual {p0, v1}, Lcom/android/settings/LaunchApplication;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SmsListPreference;

    iput-object v1, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/SmsListPreference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/SmsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->initSmsApplicationSetting()V

    const-string v1, "clear_defaults_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/LaunchApplication;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/LaunchApplication;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/LaunchApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/LaunchApplication;->mTm:Landroid/telephony/TelephonyManager;

    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LaunchApplication;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sms_application"

    invoke-virtual {p0, v1}, Lcom/android/settings/LaunchApplication;->removePreference(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 21

    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v8

    iget-object v7, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v3, 0x0

    if-eqz v11, :cond_1

    :try_start_0
    const-string v17, "com.android.mms"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v17, "LaunchApplication"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ai is not null get messageAppName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v5, 0x0

    :goto_2
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_a

    aget-object v17, v14, v5

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v17

    aget-object v17, v17, v5

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v17

    aget-object v17, v17, v5

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModelWithoutSecMessage()Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->isAdded()Z

    move-result v17

    if-eqz v17, :cond_5

    const v17, 0x7f0a1287

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LaunchApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    :cond_5
    :goto_3
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "LaunchApplication"

    const-string v18, "same application selected. do not show popup just return"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_4
    return v17

    :catch_0
    move-exception v4

    const/4 v3, 0x0

    const-string v17, "LaunchApplication"

    const-string v18, "Exception occur ai is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const v17, 0x7f0a12d7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/LaunchApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    const v17, 0x7f0a1287

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    const/16 v19, 0x1

    aput-object v7, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LaunchApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_8
    const v17, 0x7f0a1284

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v20

    aget-object v20, v20, v5

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LaunchApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_9
    const v17, 0x7f0a1283

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v20

    aget-object v20, v20, v5

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LaunchApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    if-eqz p2, :cond_b

    const-string v17, "com.android.mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    new-instance v17, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    new-instance v19, Lcom/android/settings/LaunchApplication$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LaunchApplication$5;-><init>(Lcom/android/settings/LaunchApplication;Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/high16 v18, 0x1040000

    new-instance v19, Lcom/android/settings/LaunchApplication$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LaunchApplication$4;-><init>(Lcom/android/settings/LaunchApplication;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/android/settings/LaunchApplication$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LaunchApplication$3;-><init>(Lcom/android/settings/LaunchApplication;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_b
    :goto_5
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->updateSmsApplicationSetting()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x1

    const v3, 0x7f0a0572

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string v1, "com.android.settings.DCMHomeSettings"

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string v1, "com.android.settings.HomeSettings"

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0eba

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->buildDefaultApplicationList()V

    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->updateHomeApplicationSetting()V

    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-direct {p0}, Lcom/android/settings/LaunchApplication;->initSmsApplicationSetting()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v0}, Lcom/android/settings/SmsListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LaunchApplication;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v0}, Lcom/android/settings/SmsListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
