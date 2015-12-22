.class Lcom/android/settings/DataUsageSummary$27$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$27;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DataUsageSummary$27;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$27;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$4200(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/DataUsageSummary$CycleItem;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$4300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v8

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$4300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/DataUsageSummary$CycleItem;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_data_start"

    iget-wide v4, v10, Lcom/android/settings/DataUsageSummary$CycleItem;->start:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "extra_data_end"

    iget-wide v4, v10, Lcom/android/settings/DataUsageSummary$CycleItem;->end:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$2100(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Slot"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v1

    if-ge v7, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$2100(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v3, v3, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;
    invoke-static {v3, v7}, Lcom/android/settings/DataUsageSummary;->access$4400(Lcom/android/settings/DataUsageSummary;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "extra_subscriberid"

    # invokes: Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/DataUsageSummary;->access$4500(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "extra_subscriberid"

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v3, v3, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    # invokes: Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$4600(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-class v1, Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const v3, 0x7f0a1609

    :goto_1
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$27$1;->this$1:Lcom/android/settings/DataUsageSummary$27;

    iget-object v5, v5, Lcom/android/settings/DataUsageSummary$27;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_3
    return-void

    :cond_4
    const v3, 0x7f0a1607

    goto :goto_1
.end method
