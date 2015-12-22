.class public Lcom/android/incallui/RejectMsgContentPopup;
.super Lcom/android/incallui/BaseRejectMsgContent;
.source "RejectMsgContentPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;
    }
.end annotation


# instance fields
.field private amRejectStub:Landroid/view/ViewStub;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/BaseRejectMsgContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040047

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureRejectMsgList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;

    iget-object v7, p0, Lcom/android/incallui/RejectMsgContentPopup;->mContext:Landroid/content/Context;

    const v8, 0x7f04004a

    invoke-direct {v6, v7, v8, p1}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    new-instance v7, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;

    invoke-direct {v7, p0}, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/BaseRejectMsgContent;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a032c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1
    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const-string v6, "config_op_ui_call_setting_kdi"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v6

    if-ne v6, v4, :cond_6

    move v2, v4

    :cond_3
    :goto_2
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSystemSettingAllSoundOff()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v2, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseRejectMsgContent;->onFinishInflate()V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f1000ff

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectMsgContentPopup$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectMsgContentPopup$1;-><init>(Lcom/android/incallui/RejectMsgContentPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;

    return-void
.end method
