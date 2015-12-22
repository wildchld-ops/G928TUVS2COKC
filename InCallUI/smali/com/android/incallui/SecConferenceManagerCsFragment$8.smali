.class Lcom/android/incallui/SecConferenceManagerCsFragment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecConferenceManagerCsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecConferenceManagerCsFragment;->animateForSplit(I)V
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

    iput-object p1, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v2, "split animation end..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    iget-object v3, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    # getter for: Lcom/android/incallui/SecConferenceManagerCsFragment;->mSelectedRowId:I
    invoke-static {v3}, Lcom/android/incallui/SecConferenceManagerCsFragment;->access$000(Lcom/android/incallui/SecConferenceManagerCsFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ConferenceManagerPresenter;->separateConferenceConnection(I)V

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/SecCallCardUi;->setViewStatePostSplit()V

    :cond_0
    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/incallui/SecCallButtonUi;->setFocusInCallButton(Z)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecConferenceManagerCsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    iget-object v2, v2, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecConferenceManagerCsFragment$8;->this$0:Lcom/android/incallui/SecConferenceManagerCsFragment;

    iget-object v2, v2, Lcom/android/incallui/SecConferenceManagerCsFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
