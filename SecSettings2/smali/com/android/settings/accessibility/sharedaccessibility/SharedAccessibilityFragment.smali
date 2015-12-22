.class public Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SharedAccessibilityFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private androidBeam:Landroid/preference/Preference;

.field private exportAccessibility:Landroid/preference/Preference;

.field private importAccessibility:Landroid/preference/Preference;

.field private importexportAccessibility:Landroid/preference/Preference;

.field private isPreferenceOpen:Z

.field private shareAccessibility:Landroid/preference/Preference;

.field private sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SharedAccessibilityFragment"

    const-string v1, "SharedAccessibilityFragment Loaded"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->addPreferencesFromResource(I)V

    const-string v0, "shared_accessibility_menus"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    const-string v0, "shared_accessibility_export_import"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "shared_accessibility_export"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "shared_accessibility_import"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "shared_accessibility_share"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "shared_accessibility_android_beam"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityExport"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    iput-boolean v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityImport"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    iput-boolean v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityShareVia"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    iput-boolean v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilitySettingsNFCSend"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    iput-boolean v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    move v1, v2

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityExportImport"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    iput-boolean v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    move v1, v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    return-void
.end method
