.class Lcom/android/incallui/SecTabletConferenceManagerCsView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletConferenceManagerCsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletConferenceManagerCsView;->animateForSplit(I)V
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

    iput-object p1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$8;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string v2, "split animation end..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$8;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    iget-object v3, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$8;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    # getter for: Lcom/android/incallui/SecTabletConferenceManagerCsView;->mSelectedRowId:I
    invoke-static {v3}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$000(Lcom/android/incallui/SecTabletConferenceManagerCsView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ConferenceManagerPresenter;->separateConferenceConnection(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/SecTabletMultiPartyCallCardView;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/SecTabletMultiPartyCallCardView;

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->hidePrimaryCallerContainer()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$8;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$8;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    iget-object v2, v2, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
