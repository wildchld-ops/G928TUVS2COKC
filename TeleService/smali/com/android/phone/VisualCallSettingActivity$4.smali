.class Lcom/android/phone/VisualCallSettingActivity$4;
.super Ljava/lang/Object;
.source "VisualCallSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VisualCallSettingActivity;->showUserAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VisualCallSettingActivity;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$wlancheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/VisualCallSettingActivity;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    iput-object p2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->val$checkbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/phone/VisualCallSettingActivity$4;->val$wlancheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/VisualCallSettingActivity$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    # invokes: Lcom/android/phone/VisualCallSettingActivity;->saveAgreementFlag(I)V
    invoke-static {v4, v1}, Lcom/android/phone/VisualCallSettingActivity;->access$100(Lcom/android/phone/VisualCallSettingActivity;I)V

    iget-object v4, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v4}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "visual_call_status"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/phone/VisualCallSettingActivity$4;->val$wlancheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    :goto_1
    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v2}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visual_call_update_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    # invokes: Lcom/android/phone/VisualCallSettingActivity;->updateAutoUpdate()V
    invoke-static {v2}, Lcom/android/phone/VisualCallSettingActivity;->access$200(Lcom/android/phone/VisualCallSettingActivity;)V

    iget-object v2, p0, Lcom/android/phone/VisualCallSettingActivity$4;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v2}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus()V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
