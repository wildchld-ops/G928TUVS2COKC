.class Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;
.super Ljava/lang/Thread;
.source "AssistantPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->fetchData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x1000

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    if-eqz v15, :cond_0

    const/16 v16, 0x0

    iget-object v13, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v13, :cond_1

    move-object v4, v13

    array-length v9, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v12, v4, v8

    const-string v17, "com.samsung.android.app.assistantmenu.permission.ADVERTISE_ASSISTANTMENU"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v16, 0x1

    :cond_1
    if-eqz v16, :cond_0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.chrome.deviceextras.samsung"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_2

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.android.settings"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v17, "EAMEditor"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.android.contacts"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->sIsPhone:Z
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$800(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const-string v18, "com.android.phone"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    const/4 v2, 0x0

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :cond_4
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # operator++ for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$308(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    new-instance v5, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$900(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    # invokes: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->resizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v18}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$1000(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$1100(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/content/SharedPreferences;

    move-result-object v17

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # operator++ for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$208(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    sget-object v17, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[c] increment count:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$500(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$600(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$900(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # invokes: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->OrderAppData()V
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$1200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->messageHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$1300(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_7
    const/16 v17, 0x0

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v17, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[c] decrement count:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :catch_1
    move-exception v17

    goto/16 :goto_2
.end method
