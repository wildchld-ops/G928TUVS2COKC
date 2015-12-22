.class final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobsController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v3}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "print_jobs_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v3}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v12, :cond_1

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/print/PrintJobInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v3}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    const-class v2, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v14, 0x7f0a0a6c

    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/16 v16, 0x1

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v2

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :goto_2
    :pswitch_1
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v2, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v3, 0x7f0a0a6d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v3, 0x7f0a0a6e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v3, 0x7f0a0a6f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v3, 0x7f0a0a70

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v3, 0x7f0a0a6e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_5
    const v2, 0x7f020104

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setIcon(I)V

    goto/16 :goto_2

    :pswitch_6
    const v2, 0x7f020105

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->setIcon(I)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method
