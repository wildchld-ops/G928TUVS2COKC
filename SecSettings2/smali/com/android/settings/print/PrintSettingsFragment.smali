.class public Lcom/android/settings/print/PrintSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;,
        Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

.field private final mHandler:Landroid/os/Handler;

.field private mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroid/preference/PreferenceCategory;

.field private mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

.field private final mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$4;

    invoke-direct {v0}, Lcom/android/settings/print/PrintSettingsFragment$4;-><init>()V

    sput-object v0, Lcom/android/settings/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$2;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private startSubSettingsIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, "print_services_category"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    if-nez v16, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/settings/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.printservice.PrintService"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x84

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_4

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    const-class v16, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const v16, 0x7f0a0e2d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v16, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "EXTRA_CHECKED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v16, "EXTRA_TITLE"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v12}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "EXTRA_SETTINGS_TITLE"

    const v17, 0x7f0a0a5f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "EXTRA_SETTINGS_COMPONENT_NAME"

    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v12}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "EXTRA_ADD_PRINTERS_TITLE"

    const v17, 0x7f0a0a60

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v16, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v16, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_0

    :cond_3
    const v16, 0x7f0a0e2e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "ro.csc.country_code"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "China"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CHINA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Lcom/android/settings/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    :goto_0
    const-string v2, "print_jobs_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "print_services_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    new-instance v2, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const-string v2, "key_add_print_services"

    invoke-virtual {p0, v2}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/settings/print/PrintSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/print/PrintSettingsFragment$3;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void

    :cond_1
    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Lcom/android/settings/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    goto :goto_0
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

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_PRINT_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

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

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->updateServicesPreferences()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400a2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f100082

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a0a5d

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings/print/PrintSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0401d9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment;->mProfileSpinnerAdapter:Lcom/android/settings/UserSpinnerAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v4}, Lcom/android/settings/print/PrintSettingsFragment;->setPinnedHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
