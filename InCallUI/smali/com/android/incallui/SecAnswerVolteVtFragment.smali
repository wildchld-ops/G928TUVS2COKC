.class public Lcom/android/incallui/SecAnswerVolteVtFragment;
.super Lcom/android/incallui/SecAnswerImageFragment;
.source "SecAnswerVolteVtFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnswerAsHideButton:Landroid/widget/Button;

.field private mAnswerAsShowButton:Landroid/widget/Button;

.field private mIncomingCallImageWidgetBackground:Landroid/view/View;

.field private mIncomingHideShowContainer:Landroid/view/ViewGroup;

.field private mIncomingHideShowView:Landroid/view/View;

.field private mIncomingHideShowViewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerImageFragment;-><init>()V

    return-void
.end method

.method private disableButtonAnswerAsShowOrHide()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->setIsAnsweringState(Z)V

    return-void
.end method

.method private inflateIncomingHideShowLayout(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v0, 0x7f1002c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowView:Landroid/view/View;

    const v1, 0x7f1002cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowView:Landroid/view/View;

    const v1, 0x7f1002cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private showIncomingHideShowLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingHideShowContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateButtonsToAnswerAsShowOrHide()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->setIsAnsweringState(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/SecAnswerVolteVtFragment;->showIncomingHideShowLayout(Z)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecAnswerImageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "answer as hide!"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->disableButtonAnswerAsShowOrHide()V

    goto :goto_0

    :pswitch_1
    const-string v1, "answer as show!"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->disableButtonAnswerAsShowOrHide()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002cb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f04005a

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0

    :cond_0
    const v1, 0x7f040059

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecAnswerImageFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsHideButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mAnswerAsShowButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecAnswerImageFragment;->onFinishInflate(Landroid/view/View;)V

    const v0, 0x7f10010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    const-string v0, "answer_option"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecAnswerVolteVtFragment;->inflateIncomingHideShowLayout(Landroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getIsAnsweringState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->updateButtonsToAnswerAsShowOrHide()V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "LEFT_HANDLE: answer as voice!"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v3}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "LEFT_TOP_HANDLE: answer as video!"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v0, "answer_option"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->updateButtonsToAnswerAsShowOrHide()V

    goto :goto_0

    :cond_1
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, v4}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v5}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    const-string v5, "incoming_call_widget_for_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    :cond_1
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v5, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v5, "support_wave_effect"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecAnswerVolteVtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const-string v5, "concept_jpn_dcm"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/SecAnswerVolteVtFragment;->mIncomingCallImageWidgetBackground:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method
