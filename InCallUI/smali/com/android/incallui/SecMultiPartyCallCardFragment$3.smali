.class Lcom/android/incallui/SecMultiPartyCallCardFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecMultiPartyCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecMultiPartyCallCardFragment;->animateForManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecMultiPartyCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "manage animation end..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const-string v0, "support_hide_conference_manager_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/SecMultiPartyCallCardFragment;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
