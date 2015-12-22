.class Lcom/sec/android/app/launcher/views/EditTextView$2;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$2;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$2;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$2;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$2;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextOnTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$600(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setOnTouchListener(Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$2;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextView:Lcom/sec/daliviews/views/TextView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$700(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/EditTextView$2;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mDaliTextOnClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/EditTextView;->access$800(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$2;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
