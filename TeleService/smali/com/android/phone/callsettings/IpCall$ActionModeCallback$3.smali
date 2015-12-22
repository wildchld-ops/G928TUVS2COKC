.class Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$2900(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$2900(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mEnableClickSound:Z
    invoke-static {v2, v4}, Lcom/android/phone/callsettings/IpCall;->access$3402(Lcom/android/phone/callsettings/IpCall;Z)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$3100(Lcom/android/phone/callsettings/IpCall;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v5, v2, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$700(Lcom/android/phone/callsettings/IpCall;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$3;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    # setter for: Lcom/android/phone/callsettings/IpCall;->mEnableClickSound:Z
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/IpCall;->access$3402(Lcom/android/phone/callsettings/IpCall;Z)Z

    return-void
.end method
