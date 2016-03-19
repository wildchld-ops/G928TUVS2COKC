.class public Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;
.super Landroid/app/Dialog;
.source "FullScreenHWindow.java"


# instance fields
.field private listenView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030054

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->initDockWindow()V

    return-void
.end method

.method private initDockWindow()V
    .locals 3

    const/16 v2, 0x108

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "Handwrite Window"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->listenView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->listenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setListenView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->listenView:Landroid/view/View;

    return-void
.end method

.method public setToken(Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x7dc

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
