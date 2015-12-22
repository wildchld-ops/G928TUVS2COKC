.class Lcom/sec/android/app/launcher/views/EditTextView$1;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/EditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/EditTextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/EditTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->access$200(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDelayedKeyboardManager:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$100(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # setter for: Lcom/sec/android/app/launcher/views/EditTextView;->mEditTextFocused:Z
    invoke-static {v0, p2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$302(Lcom/sec/android/app/launcher/views/EditTextView;Z)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->access$200(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDelayedKeyboardManager:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$100(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDelayedKeyboardManager:Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$100(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/utils/DelayedKeyboardManager;->getDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # invokes: Lcom/sec/android/app/launcher/views/EditTextView;->setTextBorderVisible(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$400(Lcom/sec/android/app/launcher/views/EditTextView;Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->access$500(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$1;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->access$500(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;->onEditTextFocusChanged(Z)V

    :cond_1
    return-void
.end method
