.class final Landroid/view/ViewRootImpl$ViewPreImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPreImeInputStage"
.end annotation


# instance fields
.field private mNeedBackKey:Z

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 1

    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    return-void
.end method

.method private injectBackKeyEvent()V
    .locals 16

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    const/4 v4, 0x0

    invoke-virtual {v14, v13, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    const/4 v4, 0x0

    invoke-virtual {v14, v15, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    :cond_0
    return-void
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v3, Landroid/view/KeyEvent;

    sget-boolean v6, Landroid/view/ViewRootImpl;->sIsNovelModel:Z

    if-eqz v6, :cond_9

    sget-boolean v6, Landroid/view/ViewRootImpl;->bFactoryBinary:Z

    if-nez v6, :cond_9

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v9, 0x43

    if-ne v6, v9, :cond_9

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_0

    if-nez v4, :cond_4

    const/4 v5, 0x0

    :goto_0
    instance-of v6, v5, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v6, :cond_8

    move-object v1, v5

    check-cast v1, Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v1}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v6, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {v2, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_5

    iput-boolean v8, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    :cond_0
    :goto_1
    iget-boolean v6, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    if-eqz v6, :cond_9

    if-ne v0, v7, :cond_3

    if-eqz v4, :cond_1

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->injectBackKeyEvent()V

    :cond_2
    iput-boolean v8, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    :cond_3
    :goto_2
    return v7

    :cond_4
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getServedInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v6, v7, :cond_6

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    iput-boolean v7, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    goto :goto_1

    :cond_8
    iput-boolean v7, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    goto :goto_1

    :cond_9
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_3

    move v7, v8

    goto :goto_2
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 1

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
