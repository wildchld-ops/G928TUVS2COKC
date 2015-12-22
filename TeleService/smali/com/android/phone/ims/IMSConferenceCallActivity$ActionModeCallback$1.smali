.class Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2900(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSkipClickSound:Z
    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3102(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->selectAllList()V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2900(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSkipClickSound:Z
    invoke-static {v1, v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3102(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;->this$1:Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->unSelectAllList()V

    goto :goto_1
.end method
