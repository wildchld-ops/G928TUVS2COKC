.class Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;
.super Landroid/os/Handler;
.source "ToolBarContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/toolbar/ToolBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;


# direct methods
.method private constructor <init>(Lcom/ime/framework/view/toolbar/ToolBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ime/framework/view/toolbar/ToolBarContainer;Lcom/ime/framework/view/toolbar/ToolBarContainer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;-><init>(Lcom/ime/framework/view/toolbar/ToolBarContainer;)V

    return-void
.end method


# virtual methods
.method public closeIme()V
    .locals 2

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p0, v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$100(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->requestHideSelf(I)V

    return-void
.end method
