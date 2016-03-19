.class Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iput-object p2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-interface {v5}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I
    invoke-static {v5, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$802(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I

    :goto_1
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    :goto_2
    invoke-interface {v5, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->updateSelectionMenu()V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_2

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I
    invoke-static {v5, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$802(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method
