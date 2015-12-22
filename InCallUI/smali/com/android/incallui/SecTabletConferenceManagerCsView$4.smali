.class Lcom/android/incallui/SecTabletConferenceManagerCsView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletConferenceManagerCsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletConferenceManagerCsView;->animateForHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$4;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v1, "hide animation end..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$4;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    # getter for: Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$300(Lcom/android/incallui/SecTabletConferenceManagerCsView;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$4;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    # getter for: Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceManageLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$300(Lcom/android/incallui/SecTabletConferenceManagerCsView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/incallui/SecCallCardUi;->showManageConferenceCallButton(Z)V

    :cond_0
    return-void
.end method
