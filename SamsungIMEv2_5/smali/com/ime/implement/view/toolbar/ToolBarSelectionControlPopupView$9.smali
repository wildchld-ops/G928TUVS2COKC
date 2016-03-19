.class Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$9;
.super Ljava/lang/Object;
.source "ToolBarSelectionControlPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;


# direct methods
.method constructor <init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$9;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$9;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$300(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x1020020

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$9;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->resetSelectButton()V
    invoke-static {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$200(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    goto :goto_0
.end method
