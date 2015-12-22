.class Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

.field final synthetic val$item:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$item:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1    # Landroid/view/View;

    const v4, 0x7f0a0384

    const/16 v5, 0x64

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "zero_ipcall_settings_layout"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/IpCall;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v3, "Fragment finished. We ignore onClick."

    # invokes: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/IpCall;->access$400(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$item:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1200(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v3, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$1;)V

    # setter for: Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;
    invoke-static {v1, v3}, Lcom/android/phone/callsettings/IpCall;->access$1202(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$ActionModeCallback;)Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$1200(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mEditModeFromMenu:Z
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$1402(Lcom/android/phone/callsettings/IpCall;Z)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->access$1500(Lcom/android/phone/callsettings/IpCall;Landroid/database/Cursor;)V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    iget v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$position:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$position:I

    # setter for: Lcom/android/phone/callsettings/IpCall;->mLongClickPos:I
    invoke-static {v1, v3}, Lcom/android/phone/callsettings/IpCall;->access$1602(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mIsLongClick:Z
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$1702(Lcom/android/phone/callsettings/IpCall;Z)Z

    :cond_5
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    # invokes: Lcom/android/phone/callsettings/IpCall;->sendTouchEvent(ILandroid/widget/ListView;)V
    invoke-static {v1, v6, v3}, Lcom/android/phone/callsettings/IpCall;->access$1800(Lcom/android/phone/callsettings/IpCall;ILandroid/widget/ListView;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v1, v6}, Lcom/android/phone/callsettings/IpCall;->access$302(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/IpCall;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetInvalidated()V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$item:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->val$position:I

    # setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v1, v3}, Lcom/android/phone/callsettings/IpCall;->access$1902(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v3, 0x4

    # setter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v1, v3}, Lcom/android/phone/callsettings/IpCall;->access$302(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v5}, Lcom/android/phone/callsettings/IpCall;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$2;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1, v5}, Lcom/android/phone/callsettings/IpCall;->showDialog(I)V

    move v1, v2

    goto/16 :goto_0
.end method
