.class Lcom/sec/android/app/launcher/views/EditTextView$8;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->applyTextStyle(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->updateEditTextViewPosition()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidEditLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1300(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mMaxLengthWatcher:Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1000(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/views/EditTextView$MaxTextLengthWatcher;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/EditTextView;->setCursorVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$8;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/views/EditTextView;->setVisibility(I)V

    goto :goto_0
.end method
