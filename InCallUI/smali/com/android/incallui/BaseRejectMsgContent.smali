.class public Lcom/android/incallui/BaseRejectMsgContent;
.super Landroid/widget/LinearLayout;
.source "BaseRejectMsgContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;,
        Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;,
        Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCreateMessage:Landroid/widget/LinearLayout;

.field protected mCreateMessageDivider:Landroid/view/View;

.field protected mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

.field protected mRejectMsgList:Landroid/widget/ListView;

.field protected mTextResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getRejectMsgList()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f1000e7

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseRejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mCreateMessageDivider:Landroid/view/View;

    const v1, 0x7f1000e4

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseRejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mCreateMessage:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mCreateMessage:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/BaseRejectMsgContent;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0181

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/BaseRejectMsgContent;->mContext:Landroid/content/Context;

    const v4, 0x7f0d01c8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mCreateMessage:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/incallui/BaseRejectMsgContent$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/BaseRejectMsgContent$1;-><init>(Lcom/android/incallui/BaseRejectMsgContent;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseRejectMsgContent;->showCreateRejectMsg(Ljava/lang/Boolean;)V

    :cond_0
    const v1, 0x7f1000e8

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseRejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    return-void
.end method

.method public showCreateRejectMsg(Ljava/lang/Boolean;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/BaseRejectMsgContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mCreateMessageDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mCreateMessageDivider:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
