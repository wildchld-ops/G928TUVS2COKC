.class Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;
.super Landroid/os/Handler;
.source "SymbolScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/SymbolScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SymbolScrollViewHandler"
.end annotation


# static fields
.field private static final MSG_DELAY_PREPARE_SYMBOLS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/SymbolScrollView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/SymbolScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->startSymbolScrollViewsTimer(II)V

    return-void
.end method

.method private startSymbolScrollViewsTimer(II)V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->removeMessages(I)V

    :cond_0
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mSymKeys:Ljava/util/List;
    invoke-static {v2}, Lcom/ime/framework/view/SymbolScrollView;->access$100(Lcom/ime/framework/view/SymbolScrollView;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/SymbolScrollView$SymbolScrollViewHandler;->this$0:Lcom/ime/framework/view/SymbolScrollView;

    # getter for: Lcom/ime/framework/view/SymbolScrollView;->mSymLables:Ljava/util/List;
    invoke-static {v3}, Lcom/ime/framework/view/SymbolScrollView;->access$200(Lcom/ime/framework/view/SymbolScrollView;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x12

    const/4 v5, -0x1

    add-int/lit8 v6, v6, 0x1

    # invokes: Lcom/ime/framework/view/SymbolScrollView;->updateView(ILjava/util/List;Ljava/util/List;III)I
    invoke-static/range {v0 .. v6}, Lcom/ime/framework/view/SymbolScrollView;->access$300(Lcom/ime/framework/view/SymbolScrollView;ILjava/util/List;Ljava/util/List;III)I

    :cond_0
    return-void
.end method
