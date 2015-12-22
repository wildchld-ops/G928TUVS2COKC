.class public Lcom/android/incallui/RejectMsgContentCover;
.super Lcom/android/incallui/BaseRejectMsgContent;
.source "RejectMsgContentCover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;
    }
.end annotation


# instance fields
.field private amRejectStub:Landroid/view/ViewStub;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/BaseRejectMsgContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040046

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configureRejectMsgList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentCover;->mContext:Landroid/content/Context;

    const v7, 0x7f040049

    invoke-direct {v5, v6, v7, p1}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/android/incallui/RejectMsgContentCover;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentCover;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    new-instance v6, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;

    invoke-direct {v6, p0}, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/BaseRejectMsgContent;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentCover;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v5, v4, v4, v2, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v5, "config_op_ui_call_setting_kdi"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v5

    if-ne v5, v3, :cond_5

    move v1, v3

    :cond_3
    :goto_1
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSystemSettingAllSoundOff()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v1, v4

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseRejectMsgContent;->onFinishInflate()V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f1000ff

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectMsgContentCover$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectMsgContentCover$1;-><init>(Lcom/android/incallui/RejectMsgContentCover;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentCover;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;

    return-void
.end method
