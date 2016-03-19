.class Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$12;
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

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$12;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$12;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->resetSelectButton()V
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$200(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$12;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    const/4 v1, 0x1

    # setter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->deleteAction:Z
    invoke-static {v0, v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$702(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;Z)Z

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$12;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    const/16 v1, 0x43

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->sendEvent(IIZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$100(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IIZ)V

    return-void
.end method
