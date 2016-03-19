.class Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x2

    const-string v0, "zero_ipcall_settings_layout"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1000(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const v1, 0x7f0a0384

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->val$position:I

    # setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$1902(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall;->access$1900(Lcom/android/phone/callsettings/IpCall;)I

    move-result v1

    # setter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$2602(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v1, 0x4

    # setter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$302(Lcom/android/phone/callsettings/IpCall;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    # getter for: Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->access$3900(Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1900(Lcom/android/phone/callsettings/IpCall;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/IpCall;->access$2702(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/callsettings/IpCall;->mUpdated:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$2802(Lcom/android/phone/callsettings/IpCall;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter$1;->this$1:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->editDialog()V

    goto :goto_0
.end method
