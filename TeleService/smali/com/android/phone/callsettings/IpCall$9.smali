.class Lcom/android/phone/callsettings/IpCall$9;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$2000(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V
    invoke-static {v4, v0}, Lcom/android/phone/callsettings/IpCall;->access$2100(Lcom/android/phone/callsettings/IpCall;I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$2200(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/callsettings/IpCall;->access$900(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v4, v11}, Lcom/android/phone/callsettings/IpCall;->access$1000(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$900(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$2000(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V
    invoke-static {v4, v9}, Lcom/android/phone/callsettings/IpCall;->access$2300(Lcom/android/phone/callsettings/IpCall;Z)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V
    invoke-static {v4, v10}, Lcom/android/phone/callsettings/IpCall;->access$2300(Lcom/android/phone/callsettings/IpCall;Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a06d9

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/IpCall;->access$2400(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetInvalidated()V

    const-string v4, "zero_ipcall_settings_layout"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/view/View;

    check-cast v4, Landroid/widget/Checkable;

    invoke-interface {v4, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_5
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;
    invoke-static {v5}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V
    invoke-static {v4, v10}, Lcom/android/phone/callsettings/IpCall;->access$2300(Lcom/android/phone/callsettings/IpCall;Z)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v4

    if-ne v4, v10, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$2500(Lcom/android/phone/callsettings/IpCall;)Landroid/view/ActionMode;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCall;->access$2500(Lcom/android/phone/callsettings/IpCall;)Landroid/view/ActionMode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$9;->this$0:Lcom/android/phone/callsettings/IpCall;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v4, v11}, Lcom/android/phone/callsettings/IpCall;->access$2502(Lcom/android/phone/callsettings/IpCall;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto :goto_1
.end method
