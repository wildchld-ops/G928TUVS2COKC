.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;
.super Ljava/lang/Object;
.source "SecVoiceCallButtonVCCFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showUserAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    iput-object p2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->saveAgreementFlag(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2700(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "visual_call_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->process(Z)V
    invoke-static {v1, v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2800(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
