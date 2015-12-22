.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;
.super Ljava/lang/Object;
.source "CallerInfoCardView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;


# direct methods
.method constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v4, "onGlobalLayout..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$400(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;

    move-result-object v7

    # invokes: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->arrangeContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z
    invoke-static {v4, v5, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$500(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mBottomView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$600(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopItmemIsAcitionMemo:Z
    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$800(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mBottomView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$600(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # getter for: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mBottomView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$600(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
