.class Landroid/widget/AbsHorizontalListView$5;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsHorizontalListView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public performEditorAction(I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4500(Landroid/widget/AbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$5;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4500(Landroid/widget/AbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
