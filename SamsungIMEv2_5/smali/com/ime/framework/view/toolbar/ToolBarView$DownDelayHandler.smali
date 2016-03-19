.class Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;
.super Landroid/os/Handler;
.source "ToolBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/toolbar/ToolBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownDelayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/toolbar/ToolBarView;


# direct methods
.method private constructor <init>(Lcom/ime/framework/view/toolbar/ToolBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ime/framework/view/toolbar/ToolBarView;Lcom/ime/framework/view/toolbar/ToolBarView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;-><init>(Lcom/ime/framework/view/toolbar/ToolBarView;)V

    return-void
.end method


# virtual methods
.method public enableViewDown()V
    .locals 2

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p0, v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    const/4 v1, 0x1

    # setter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mViewDownEnable:Z
    invoke-static {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$002(Lcom/ime/framework/view/toolbar/ToolBarView;Z)Z

    return-void
.end method
