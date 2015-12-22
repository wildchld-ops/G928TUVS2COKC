.class final Lcom/android/settings/accessibility/AccessibilitySettings$7;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "toggle_lock_screen_rotation_preference"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "toggle_auto_rotate_screen_2nd_preference"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->isReminderTwo:Z
    invoke-static {}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$700()Z

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_2

    :cond_1
    const-string v1, "call_answering_ending"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "com.samsung.android.app.shareaccessibilitysettings"

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    # getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "shopdemo"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_6

    :goto_0
    invoke-static {p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_SHARING_ACC_SETTINGS_MENU:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "universal_lock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettings;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0

    :cond_6
    const-string v1, "universal_lock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v18, "accessibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a08b5

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v13

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v13, :cond_5

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    if-nez v18, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "com.samsung.android.app.talkback"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "com.samsung.android.universalswitch"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "com.samsung.android.app.screenreader"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "com.sec.android.app.camera"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "com.sec.android.app.camera.plb"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "accessibility_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    if-eqz v2, :cond_3

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v14, 0x1

    :goto_3
    if-eqz v14, :cond_4

    const v18, 0x7f0a0e2d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_4
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v15, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    iput-object v11, v7, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    :cond_4
    const v18, 0x7f0a0e2e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_7

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v18, "toggle_easy_interaction_preference"

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v18, 0x7f0a08d2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v18, 0x7f0a09d1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v8
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v2, 0x7f070003

    iput v2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
