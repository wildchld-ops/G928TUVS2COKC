.class Lcom/sec/android/app/launcher/views/EditTextView$7$1;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/EditTextView$7;->onVisibilityChange(Lcom/sec/daliviews/views/NativeViewBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/views/EditTextView$7;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/EditTextView$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$7$1;->this$1:Lcom/sec/android/app/launcher/views/EditTextView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$7$1;->this$1:Lcom/sec/android/app/launcher/views/EditTextView$7;

    iget-object v1, v1, Lcom/sec/android/app/launcher/views/EditTextView$7;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/launcher/views/EditTextView;->setTextBorderVisible(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$400(Lcom/sec/android/app/launcher/views/EditTextView;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$7$1;->this$1:Lcom/sec/android/app/launcher/views/EditTextView$7;

    iget-object v1, v1, Lcom/sec/android/app/launcher/views/EditTextView$7;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$7$1;->this$1:Lcom/sec/android/app/launcher/views/EditTextView$7;

    iget-object v1, v1, Lcom/sec/android/app/launcher/views/EditTextView$7;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mAndroidTextLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1200(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$7$1;->this$1:Lcom/sec/android/app/launcher/views/EditTextView$7;

    iget-object v1, v1, Lcom/sec/android/app/launcher/views/EditTextView$7;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/EditTextView;->setVisibility(I)V

    return-void
.end method
