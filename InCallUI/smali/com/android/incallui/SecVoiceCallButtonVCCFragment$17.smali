.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$17;
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

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    iput-object p2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$17;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$17;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->saveAgreementFlag(I)V
    invoke-static {v2, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2700(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$17;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->process(Z)V
    invoke-static {v2, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2800(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
