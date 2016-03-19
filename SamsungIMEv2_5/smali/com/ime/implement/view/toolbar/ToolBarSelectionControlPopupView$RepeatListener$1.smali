.class Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener$1;
.super Ljava/lang/Object;
.source "ToolBarSelectionControlPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;


# direct methods
.method constructor <init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener$1;->this$1:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener$1;->this$1:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->access$900(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener$1;->this$1:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->normalInterval:I
    invoke-static {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->access$800(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener$1;->this$1:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->clickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->access$1100(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener$1;->this$1:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->downView:Landroid/view/View;
    invoke-static {v1}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->access$1000(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
