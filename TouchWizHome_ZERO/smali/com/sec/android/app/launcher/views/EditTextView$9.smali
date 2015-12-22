.class Lcom/sec/android/app/launcher/views/EditTextView$9;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/EditTextView;->initialise(Lcom/sec/daliviews/views/TextView;Landroid/view/ViewGroup;Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/EditTextView;

.field final synthetic val$mode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/EditTextView;Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$9;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iput-object p2, p0, Lcom/sec/android/app/launcher/views/EditTextView$9;->val$mode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$9;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$9;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1700(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$9;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1700(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$9;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$9;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$9;->val$mode:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    :cond_0
    return-void
.end method
