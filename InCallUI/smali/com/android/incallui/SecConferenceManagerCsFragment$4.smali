.class Lcom/android/incallui/SecConferenceManagerCsFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecConferenceManagerCsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecConferenceManagerCsFragment;->animateForHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecConferenceManagerCsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$4;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v1, "hide animation end..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$4;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$4;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$4;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$4;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$4;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecInCallActivity;->showConferenceCallManager(Z)V

    :cond_0
    return-void
.end method
