.class Lcom/ime/framework/view/SymbolScrollView$1;
.super Ljava/lang/Object;
.source "SymbolScrollView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/SymbolScrollView;->scrollToPos(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/SymbolScrollView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/SymbolScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I
    invoke-static {v1}, Lcom/ime/framework/view/SymbolScrollView;->access$400(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I
    invoke-static {v1}, Lcom/ime/framework/view/SymbolScrollView;->access$500(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I
    invoke-static {v1}, Lcom/ime/framework/view/SymbolScrollView;->access$400(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I
    invoke-static {v1}, Lcom/ime/framework/view/SymbolScrollView;->access$500(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v1

    if-gez v1, :cond_2

    :cond_1
    # getter for: Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ime/framework/view/SymbolScrollView;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Err-------scrollToPos--onGlobalLayout----postIdx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I
    invoke-static {v3}, Lcom/ime/framework/view/SymbolScrollView;->access$400(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mDesiredScrollY ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I
    invoke-static {v3}, Lcom/ime/framework/view/SymbolScrollView;->access$500(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; curY ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    invoke-virtual {v3}, Lcom/ime/framework/view/SymbolScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I
    invoke-static {v1}, Lcom/ime/framework/view/SymbolScrollView;->access$400(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I
    invoke-static {v1}, Lcom/ime/framework/view/SymbolScrollView;->access$500(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    invoke-virtual {v1}, Lcom/ime/framework/view/SymbolScrollView;->getScrollY()I

    move-result v0

    :goto_0
    # getter for: Lcom/ime/framework/view/SymbolScrollView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ime/framework/view/SymbolScrollView;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------scrollToPos----- ny = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; curY ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    invoke-virtual {v3}, Lcom/ime/framework/view/SymbolScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # setter for: Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I
    invoke-static {v1, v4}, Lcom/ime/framework/view/SymbolScrollView;->access$502(Lcom/ime/framework/view/SymbolScrollView;I)I

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/ime/framework/view/SymbolScrollView;->scrollTo(II)V

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    iget-object v2, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I
    invoke-static {v2}, Lcom/ime/framework/view/SymbolScrollView;->access$400(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v2

    # setter for: Lcom/ime/framework/view/SymbolScrollView;->mCurPageIdx:I
    invoke-static {v1, v2}, Lcom/ime/framework/view/SymbolScrollView;->access$702(Lcom/ime/framework/view/SymbolScrollView;I)I

    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # setter for: Lcom/ime/framework/view/SymbolScrollView;->mPostPageIdx:I
    invoke-static {v1, v4}, Lcom/ime/framework/view/SymbolScrollView;->access$402(Lcom/ime/framework/view/SymbolScrollView;I)I

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/view/SymbolScrollView$1;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mDesiredScrollY:I
    invoke-static {v1}, Lcom/ime/framework/view/SymbolScrollView;->access$500(Lcom/ime/framework/view/SymbolScrollView;)I

    move-result v0

    goto :goto_0
.end method
