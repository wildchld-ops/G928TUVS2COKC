.class Lcom/ime/framework/view/toolbar/ToolBarView$1;
.super Ljava/lang/Object;
.source "ToolBarView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/toolbar/ToolBarView;->getLongClickListener()Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/toolbar/ToolBarView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/toolbar/ToolBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarView$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/ime/framework/view/toolbar/ToolBarView$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;
    invoke-static {v7}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$200(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    move-result-object v7

    sget-object v10, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    invoke-virtual {v7, v10}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    instance-of v7, p1, Lcom/ime/framework/view/toolbar/ToolBarPage;

    if-nez v7, :cond_1

    :cond_0
    move v7, v8

    :goto_0
    return v7

    :cond_1
    iget-object v7, p0, Lcom/ime/framework/view/toolbar/ToolBarView$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v7}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v7

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v7}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getToolbarContainer()Lcom/ime/framework/view/toolbar/ToolBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolBarItemsNum()I

    move-result v4

    if-ne v9, v4, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move-object v6, p1

    check-cast v6, Lcom/ime/framework/view/toolbar/ToolBarPage;

    iget-object v7, p0, Lcom/ime/framework/view/toolbar/ToolBarView$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-virtual {v6}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v10

    # setter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mDragItmeIdIndex:I
    invoke-static {v7, v10}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$402(Lcom/ime/framework/view/toolbar/ToolBarView;I)I

    invoke-static {v6}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setEmptyItemPage(Lcom/ime/framework/view/toolbar/ToolBarPage;)V

    invoke-virtual {v6}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getDragShadowDrawable(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v7, ""

    const-string v10, ""

    invoke-static {v7, v10}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    new-instance v7, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;

    invoke-direct {v7, v5}, Lcom/ime/framework/view/toolbar/ToolBarDragShadow;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1, v7, p1, v8}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setVisibility(I)V

    invoke-virtual {v0, v9}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setOnDraggingFlag(Z)V

    :cond_3
    move v7, v9

    goto :goto_0
.end method
