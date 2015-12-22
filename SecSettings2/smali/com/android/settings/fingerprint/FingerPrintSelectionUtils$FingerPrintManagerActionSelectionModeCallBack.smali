.class Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;
.super Ljava/lang/Object;
.source "FingerPrintSelectionUtils.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerPrintManagerActionSelectionModeCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;


# direct methods
.method private constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteFingerprint()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->renameFingerPrint()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$200(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectedFingerprintTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$700(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$600(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$200(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->select:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$302(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$500()Lcom/android/settings/fingerprint/FingerprintSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400bb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$402(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$400(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$400(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1001d2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1, v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$102(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$400(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1001d3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllText:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$602(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$600(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$400(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1001d4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectedFingerprintTextView:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$702(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a00b8

    invoke-interface {p2, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0a10d3

    invoke-interface {p2, v4, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_deregister:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$802(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_rename:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$902(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->updateActionButtonState()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$1002(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    const-string v0, "FingerPrintSelectionUtils"

    const-string v1, "onDestroyActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$1002(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->finishSelectMode()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$1100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
