.class Lcom/sec/android/app/launcher/views/EditTextView$3;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/EditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mLastMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v3}, Lcom/sec/android/app/launcher/views/EditTextView;->access$900(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/MotionEvent;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mLastMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v3}, Lcom/sec/android/app/launcher/views/EditTextView;->access$900(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/EditTextView;->getX()F

    move-result v4

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/launcher/views/EditTextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/launcher/views/EditTextView;->setSelection(I)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # setter for: Lcom/sec/android/app/launcher/views/EditTextView;->mLastMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v3, v5}, Lcom/sec/android/app/launcher/views/EditTextView;->access$902(Lcom/sec/android/app/launcher/views/EditTextView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/daliviews/views/TextView;->setVisibilityChangeListener(Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/EditTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mMaxLengthWatcher:Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;
    invoke-static {v3}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1000(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->setEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/EditTextView$3;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/EditTextView;->requestFocus()Z

    :cond_2
    return-void
.end method
