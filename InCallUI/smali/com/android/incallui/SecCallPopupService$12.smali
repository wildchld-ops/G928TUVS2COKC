.class Lcom/android/incallui/SecCallPopupService$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecCallPopupService;->animateForToggleRejectMsg(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    const v6, 0x7f0d0185

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$3000(Lcom/android/incallui/SecCallPopupService;)Lcom/android/incallui/RejectMsgContentPopup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$3000(Lcom/android/incallui/SecCallPopupService;)Lcom/android/incallui/RejectMsgContentPopup;

    move-result-object v3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mIsRejectMsgContentShowing:Z
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$2700(Lcom/android/incallui/SecCallPopupService;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$3000(Lcom/android/incallui/SecCallPopupService;)Lcom/android/incallui/RejectMsgContentPopup;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/incallui/RejectMsgContentPopup;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$3000(Lcom/android/incallui/SecCallPopupService;)Lcom/android/incallui/RejectMsgContentPopup;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/incallui/RejectMsgContentPopup;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$2900(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    iget-object v1, v1, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "support_hover_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$2900(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/Button;

    move-result-object v1

    new-array v3, v5, [I

    aput v6, v3, v2

    invoke-static {v1, v3}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$2900(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/Button;

    move-result-object v3

    const/4 v1, 0x2

    new-array v4, v1, [I

    aput v6, v4, v2

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$12;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mIsRejectMsgContentShowing:Z
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$2700(Lcom/android/incallui/SecCallPopupService;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0d0187

    :goto_2
    aput v1, v4, v5

    invoke-static {v3, v4}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[I)V

    goto :goto_1

    :cond_4
    const v1, 0x7f0d0188

    goto :goto_2
.end method
