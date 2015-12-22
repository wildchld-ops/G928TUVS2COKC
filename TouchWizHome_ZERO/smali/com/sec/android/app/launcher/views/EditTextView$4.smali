.class Lcom/sec/android/app/launcher/views/EditTextView$4;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$4;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$4;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # invokes: Lcom/sec/android/app/launcher/views/EditTextView;->setText()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1100(Lcom/sec/android/app/launcher/views/EditTextView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$4;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v2, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->TEXT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$4;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$500(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/EditTextView$4;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mListener:Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$500(Lcom/sec/android/app/launcher/views/EditTextView;)Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/launcher/views/EditTextView$EditTextViewListener;->onTextChanged(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
