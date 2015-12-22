.class Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;
.super Ljava/lang/Object;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$400(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$500(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x5

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$600(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x3

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$700(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x4

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$800(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$900(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$1000(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$1100(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$1200(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->access$1300(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
