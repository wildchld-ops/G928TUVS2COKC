.class Lcom/android/settings/easymode/EasyModeApp$4;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeApp;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v11

    # setter for: Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z
    invoke-static {v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->access$202(Lcom/android/settings/easymode/EasyModeApp;Z)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v10}, Lcom/android/settings/SettingsActivity;->setRedrawTab()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->goToPersonal()V
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v10

    const-string v11, "easy_mode_switch"

    invoke-virtual {v10, v11}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$500(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    const-string v10, "EasyModeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KKK onClick mPrevModeState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mModeState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "EasyModeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KKK onClick isDefaultEasyLauncher : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$800(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "easy_mode_select_all"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$900(Lcom/android/settings/easymode/EasyModeApp;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v10

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->checkLeastOnEasyMode()Z
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a107f

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->setStandardFont()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v11, 0x0

    # setter for: Lcom/android/settings/easymode/EasyModeApp;->selected_value:I
    invoke-static {v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->access$1102(Lcom/android/settings/easymode/EasyModeApp;I)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeEnabler;->startStandardMode()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V
    invoke-static {v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->access$1200(Lcom/android/settings/easymode/EasyModeApp;Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    if-ne v7, v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v10

    if-nez v10, :cond_8

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v10, v3, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v11}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0eba

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v15}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a1077

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v11}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v10, 0x64

    invoke-virtual {v1, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_5

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :cond_5
    const-string v10, "EasyModeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KKK onCreateOptionsMenu mWpopup : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0a1532

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/easymode/EasyModeApp$4$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/settings/easymode/EasyModeApp$4$1;-><init>(Lcom/android/settings/easymode/EasyModeApp$4;)V

    invoke-virtual {v2, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/settings/easymode/EasyModeApp$4$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/settings/easymode/EasyModeApp$4$2;-><init>(Lcom/android/settings/easymode/EasyModeApp$4;)V

    invoke-virtual {v2, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->applyEasyMode()V
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$1300(Lcom/android/settings/easymode/EasyModeApp;)V

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x1

    if-ne v7, v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v10

    if-nez v10, :cond_9

    if-nez v4, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V
    invoke-static {v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->access$1200(Lcom/android/settings/easymode/EasyModeApp;Z)V

    goto/16 :goto_1

    :cond_a
    if-nez v7, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v10

    if-nez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$1400(Lcom/android/settings/easymode/EasyModeApp;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z
    invoke-static {v10}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v11, 0x1

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V
    invoke-static {v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->access$1200(Lcom/android/settings/easymode/EasyModeApp;Z)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v10}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1
.end method
