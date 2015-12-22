.class Lcom/android/settings/sim/SimSettings$SimPreference$2;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

.field final synthetic val$dialogLayout:Landroid/view/View;

.field final synthetic val$tintSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->val$dialogLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->val$dialogLayout:Landroid/view/View;

    const v7, 0x7f10028e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$200(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$200(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v6, v6, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$300(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    const-wide/16 v8, 0x2

    invoke-virtual {v6, v0, v2, v8, v9}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v6, v6, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v6}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$200(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/settings/sim/SimSettings$SimPreference;->mTintArr:[I
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$400(Lcom/android/settings/sim/SimSettings$SimPreference;)[I

    move-result-object v6

    aget v4, v6, v5

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/settings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$200(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v6, v6, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    # getter for: Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$300(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v6, v6, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v6}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v6, v6, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateAllOptions()V
    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->access$500(Lcom/android/settings/sim/SimSettings;)V

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v6}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    return-void
.end method
