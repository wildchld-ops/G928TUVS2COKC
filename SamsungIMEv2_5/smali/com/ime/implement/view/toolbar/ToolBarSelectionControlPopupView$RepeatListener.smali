.class Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;
.super Ljava/lang/Object;
.source "ToolBarSelectionControlPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RepeatListener"
.end annotation


# instance fields
.field private final clickListener:Landroid/view/View$OnClickListener;

.field private downView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private handlerRunnable:Ljava/lang/Runnable;

.field private initialInterval:I

.field private final normalInterval:I

.field final synthetic this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;


# direct methods
.method public constructor <init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IILandroid/view/View$OnClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener$1;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)V

    iput-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null runnable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->initialInterval:I

    iput p3, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->normalInterval:I

    iput-object p4, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->downView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)I
    .locals 1

    iget v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->normalInterval:I

    return v0
.end method

.method static synthetic access$900(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->initialInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->downView:Landroid/view/View;

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->deleteAction:Z
    invoke-static {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$700(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    invoke-virtual {v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->playSound()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->downView:Landroid/view/View;

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->this$0:Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;

    # setter for: Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->deleteAction:Z
    invoke-static {v0, v4}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->access$702(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;Z)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;->downView:Landroid/view/View;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
