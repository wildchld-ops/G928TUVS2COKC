.class Lcom/android/incallui/SecCallPopupService$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecCallPopupService;->animateForAnswerCall()V
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

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$13;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$13;->this$0:Lcom/android/incallui/SecCallPopupService;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/SecCallPopupService;->mIsAnswerProcessing:Z
    invoke-static {v1, v2}, Lcom/android/incallui/SecCallPopupService;->access$3102(Lcom/android/incallui/SecCallPopupService;Z)Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$13;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/SecCallPopupService;->updateViewLayout()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$13;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mRingingCallPopupButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$3200(Lcom/android/incallui/SecCallPopupService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$13;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$3300(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$13;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$2600(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setTranslationZ(F)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$13;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$3400(Lcom/android/incallui/SecCallPopupService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$13;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$3500(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f02015f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$13;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v1, v0, v0, v2}, Lcom/android/incallui/SecCallPopupService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method
