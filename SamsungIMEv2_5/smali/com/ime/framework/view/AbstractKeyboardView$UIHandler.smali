.class public Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;
.super Landroid/os/Handler;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIHandler"
.end annotation


# instance fields
.field private mInKeyRepeat:Z

.field final synthetic this$0:Lcom/ime/framework/view/AbstractKeyboardView;


# direct methods
.method public constructor <init>(Lcom/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private dismissPreviewInternal(Lcom/ime/framework/view/Keyboard$Key;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dismiss key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dismiss key pressed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mShowingKeyPreviewViews:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2200(Lcom/ime/framework/view/AbstractKeyboardView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_4

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "SamsungIME"

    const-string v2, "Dismiss keyPreviewView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mShowingKeyPreviewViews:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2200(Lcom/ime/framework/view/AbstractKeyboardView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mShowingKeyPreviewViews:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2200(Lcom/ime/framework/view/AbstractKeyboardView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mFreeKeyPreviewViews:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2300(Lcom/ime/framework/view/AbstractKeyboardView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2400(Lcom/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2400(Lcom/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelAllDismissPreview()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    return-void
.end method

.method public cancelAllMessages()V
    .locals 0

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyTimers()V

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllDismissPreview()V

    return-void
.end method

.method public cancelDismissPreview(I)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public cancelDismissPreview(Lcom/ime/framework/view/tracker/PointerTracker;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # setter for: Lcom/ime/framework/view/AbstractKeyboardView;->mIsKeyRepeating:Z
    invoke-static {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1402(Lcom/ime/framework/view/AbstractKeyboardView;Z)Z

    iput-boolean v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->mInKeyRepeat:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->initDelteCount()V

    return-void
.end method

.method public cancelKeyTimers()V
    .locals 0

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyRepeatTimer()V

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressSplitMoveTimer()V

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelTextDeleteAllTimer()V

    return-void
.end method

.method public cancelLongPressKnobRepeatKey()V
    .locals 1

    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    return-void
.end method

.method public cancelLongPressSplitMoveTimer()V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    return-void
.end method

.method public cancelTextDeleteAllTimer()V
    .locals 1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    return-void
.end method

.method public dismissAllPreview(J)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2400(Lcom/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mPreviewPlacer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2400(Lcom/ime/framework/view/AbstractKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInvisiblePreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInvisiblePreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public dismissPreview(JI)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    if-gez p3, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissPreview Wrong Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    array-length v1, v1

    if-ge p3, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    aget-object v0, v1, p3

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    const-string v1, "StrEmpty"

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, -0x66

    if-ne v1, v2, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mShowingKeyPreviewViews:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2200(Lcom/ime/framework/view/AbstractKeyboardView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    cmp-long v1, p1, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    array-length v1, v1

    if-lt p3, v1, :cond_3

    const-string v1, "SamsungIME"

    const-string v2, "dismissPreview KeyIndex is out of bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " KeyIndex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mKeys.length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v3, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissPreviewInternal(Lcom/ime/framework/view/Keyboard$Key;)V

    goto :goto_0

    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_5
    cmp-long v1, p1, v4

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    array-length v1, v1

    if-lt p3, v1, :cond_6

    const-string v1, "SamsungIME"

    const-string v2, "dismissPreview KeyIndex is out of bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " KeyIndex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mKeys.length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v3, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissPreviewInternal(Lcom/ime/framework/view/Keyboard$Key;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/ime/framework/view/AbstractKeyboardView;->drawHoverKey(I)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mHoverView:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1100(Lcom/ime/framework/view/AbstractKeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    array-length v5, v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    aget-object v16, v5, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissPreviewInternal(Lcom/ime/framework/view/Keyboard$Key;)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/ime/framework/view/tracker/PointerTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/ime/framework/view/AbstractKeyboardView;->isPointingAction()Z
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1200(Lcom/ime/framework/view/AbstractKeyboardView;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/ime/framework/trace/KeyboardPointing;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1300(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardPointing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardPointing;->getMultiDirection()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/ime/framework/trace/KeyboardPointing;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1300(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardPointing;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ime/framework/trace/KeyboardPointing;->onDownKeyEvent(I)V

    const/16 v23, 0x258

    const/16 v5, 0x13

    if-eq v4, v5, :cond_1

    const/16 v5, 0x14

    if-ne v4, v5, :cond_2

    :cond_1
    const/16 v23, 0xfa

    :cond_2
    move/from16 v0, v23

    int-to-long v6, v0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v7, v5, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/tracker/PointerTracker;->isBackspaceKey(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mIsKeyRepeating:Z
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1400(Lcom/ime/framework/view/AbstractKeyboardView;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, -0x5

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->playVibrateEffect(IZ)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v6, 0x1

    # setter for: Lcom/ime/framework/view/AbstractKeyboardView;->mIsKeyRepeating:Z
    invoke-static {v5, v6}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1402(Lcom/ime/framework/view/AbstractKeyboardView;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-boolean v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mIsChnMode:Z

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setIsSpellViewBackSpace(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getIsSpellViewBackSpace()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setIsSpellViewBackSpace(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyTimers()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/ime/framework/view/tracker/PointerTracker;->repeatKey(I)V

    const-wide/16 v6, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mCurrentKey:Lcom/ime/framework/view/Keyboard$Key;

    iget-object v5, v5, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v6, -0x3ee

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v5, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, -0x5

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v5, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x96

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v6, -0x3e9

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v5, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v6, -0x3ea

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v5, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v6, -0x3ed

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v5, 0x36

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/ime/framework/view/tracker/PointerTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressSplitMoveTimer()V

    invoke-virtual/range {v20 .. v20}, Lcom/ime/framework/view/tracker/PointerTracker;->isHwrTracker()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    new-instance v6, Landroid/graphics/Point;

    invoke-virtual/range {v20 .. v20}, Lcom/ime/framework/view/tracker/PointerTracker;->getHwrDownPointX()I

    move-result v7

    invoke-virtual/range {v20 .. v20}, Lcom/ime/framework/view/tracker/PointerTracker;->getHwrDownPointY()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->onHwrPanelLongPressed(Landroid/graphics/Point;)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/ime/framework/view/AbstractKeyboardView;->isPointingAction()Z
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1200(Lcom/ime/framework/view/AbstractKeyboardView;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/ime/framework/trace/KeyboardPointing;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1300(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardPointing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardPointing;->getMultiDirection()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mPointing:Lcom/ime/framework/trace/KeyboardPointing;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1300(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardPointing;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ime/framework/trace/KeyboardPointing;->onDownKeyEvent(I)V

    invoke-virtual/range {v20 .. v20}, Lcom/ime/framework/view/tracker/PointerTracker;->noUseUpdateKey()V

    const-wide/16 v6, 0x32

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v7, v5, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v20

    # invokes: Lcom/ime/framework/view/AbstractKeyboardView;->openMultiTouchPopupIfRequired(ILcom/ime/framework/view/tracker/PointerTracker;)Z
    invoke-static {v5, v6, v0}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1500(Lcom/ime/framework/view/AbstractKeyboardView;ILcom/ime/framework/view/tracker/PointerTracker;)Z

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    if-ltz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    aget-object v17, v5, v19

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v6, v7, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissPreview(JI)V

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iput-boolean v5, v0, Lcom/ime/framework/view/Keyboard$Key;->pressedstate:Z

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iput-boolean v5, v0, Lcom/ime/framework/view/Keyboard$Key;->focusstate:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/ime/framework/view/Keyboard$Key;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mQwertyKey:Lcom/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->showPopupMiniKeyboard(Lcom/ime/framework/view/Keyboard$Key;I)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-boolean v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v5}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/ime/framework/view/AbstractKeyboardView;->updateKeyIndex(Ljava/util/List;)V

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/ime/framework/view/Keyboard$Key;->focusstate:Z

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/ime/framework/view/Keyboard$Key;->pressedstate:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/Keyboard$Key;

    iput-object v5, v6, Lcom/ime/framework/view/AbstractKeyboardView;->mCurrentKey:Lcom/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/Keyboard$Key;

    invoke-virtual {v6, v5}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/ime/framework/view/Keyboard$Key;)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ime/framework/view/AbstractKeyboardView;->setMovableMode(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ime/framework/view/AbstractKeyboardView$PointerQueue;->cancelAllPointers(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelAllMessages()V

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->dismissAllPreview(J)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressKnobRepeatKey()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->deleteAllTextInEditor()V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1600(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardTrace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getIndexOfFirstVisibleTrace()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    const/16 v5, 0x31

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1600(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardTrace;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ime/framework/trace/KeyboardTrace;->setInTraceAnimation(Z)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidate()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1600(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardTrace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1600(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardTrace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getFlagForReleaseTraceWithAnimation()Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v5, Lcom/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;

    const/16 v6, 0x31

    invoke-virtual {v5, v6}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1600(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardTrace;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ime/framework/trace/KeyboardTrace;->setFlagForReleaseTraceWithAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mUpXcordinate:J
    invoke-static {v6}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1700(Lcom/ime/framework/view/AbstractKeyboardView;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mUpYcordinate:J
    invoke-static {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1800(Lcom/ime/framework/view/AbstractKeyboardView;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mUpKeyIndex:I
    invoke-static {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1900(Lcom/ime/framework/view/AbstractKeyboardView;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mUpKeyCode:I
    invoke-static {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2000(Lcom/ime/framework/view/AbstractKeyboardView;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mlastDown:Z
    invoke-static {v12}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2100(Lcom/ime/framework/view/AbstractKeyboardView;)Z

    move-result v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {v5 .. v14}, Lcom/ime/framework/view/AbstractKeyboardView;->releaseTrace(JJIIZJ)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;
    invoke-static {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1600(Lcom/ime/framework/view/AbstractKeyboardView;)Lcom/ime/framework/trace/KeyboardTrace;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ime/framework/trace/KeyboardTrace;->setInTraceAnimation(Z)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_a
        0x12 -> :sswitch_c
        0x1e -> :sswitch_0
        0x1f -> :sswitch_1
        0x2a -> :sswitch_d
        0x31 -> :sswitch_e
        0x34 -> :sswitch_b
        0x36 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3ee -> :sswitch_5
        -0x3ed -> :sswitch_9
        -0x3ea -> :sswitch_8
        -0x3e9 -> :sswitch_7
        -0x5 -> :sswitch_6
    .end sparse-switch
.end method

.method public invalidateHoverKey(I)V
    .locals 4

    const/16 v2, 0x1e

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/ime/framework/view/AbstractKeyboardView;->isPointingAction()Z
    invoke-static {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->access$1200(Lcom/ime/framework/view/AbstractKeyboardView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public invisibleHoverPopup()V
    .locals 4

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mHoverPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public isInKeyRepeat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public restartLongPressSplitMoveTimer()V
    .locals 2

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressSplitMoveTimer(J)V

    :cond_0
    return-void
.end method

.method public startKeyRepeatTimer(JILcom/ime/framework/view/tracker/PointerTracker;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->mInKeyRepeat:Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startKnobLongPressTimer(JI)V
    .locals 3

    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public startLongPressKnobRepeatKey(J)V
    .locals 1

    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startLongPressSplitMoveTimer(J)V
    .locals 3

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public startLongPressTimer(JILcom/ime/framework/view/tracker/PointerTracker;)V
    .locals 3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    # getter for: Lcom/ime/framework/view/AbstractKeyboardView;->mIsMultiTouch:Z
    invoke-static {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->access$2500(Lcom/ime/framework/view/AbstractKeyboardView;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public startTextDeleteAllTimer(J)V
    .locals 1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ime/framework/view/AbstractKeyboardView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
