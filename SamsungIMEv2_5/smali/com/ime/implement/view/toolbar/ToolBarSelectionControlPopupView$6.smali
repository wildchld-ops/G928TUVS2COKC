.class Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$6;
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

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$6;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x41

    const/16 v4, 0x3b

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$6;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isSelectingState:Z
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$000(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$6;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    const/4 v1, 0x1

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->sendEvent(IIZ)V
    invoke-static {v0, v4, v5, v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$100(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IIZ)V

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$6;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    const/16 v1, 0x7b

    const/16 v2, 0x1000

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->sendEvent(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$100(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IIZ)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$6;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isSelectingState:Z
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$000(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$6;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->sendEvent(IIZ)V
    invoke-static {v0, v4, v5, v3}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$100(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IIZ)V

    :cond_1
    return-void
.end method
