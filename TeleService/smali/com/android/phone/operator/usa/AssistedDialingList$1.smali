.class Lcom/android/phone/operator/usa/AssistedDialingList$1;
.super Ljava/lang/Object;
.source "AssistedDialingList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AssistedDialingList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AssistedDialingList;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AssistedDialingList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$000(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->minimizeSoftInput(Landroid/os/IBinder;I)Z

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/operator/usa/AssistedDialingList;->access$100(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearFocus()V

    :cond_0
    return-void
.end method
