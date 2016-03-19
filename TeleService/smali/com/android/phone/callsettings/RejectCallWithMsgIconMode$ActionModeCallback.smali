.class Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string v1, "onActionItemClicked()"

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->deleteDone(Landroid/view/View;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100114 -> :sswitch_1
        0x7f100202 -> :sswitch_0
        0x7f100203 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f100058

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040062

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1102(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Landroid/view/View;)Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f100059

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f10005b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$902(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1202(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string v1, "onDestroyActionMode "

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1202(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMultiSelectActionBarView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1102(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Landroid/view/View;)Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$402(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mEnableClickSound:Z
    invoke-static {v0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1302(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$400(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v1

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1400(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I
    invoke-static {v0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$802(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemCheckedStateChanged, position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mViewitem:Landroid/view/View;

    const v2, 0x7f1001a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mEnableClickSound:Z
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1700(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1700(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/media/AudioManager;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsSelectAllmode:Z
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1802(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsSelectAllmode:Z
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1800(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void

    :cond_3
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const v4, 0x7f100114

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "onPrepareActionMode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1500(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback$3;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mActionModeType:I
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1600(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "onPrepareActionMode, ACTION_DELETE_MODE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100202

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f100203

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$800(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updateSelectionMenu()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    const-string v5, "updateSelectionMenu()"

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v4, v4, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v4, v4, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v4, v4, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I
    invoke-static {v4, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$802(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a06d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$900(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/widget/TextView;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I
    invoke-static {v6}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$800(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v4, v4, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$800(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getUserDataCount()I
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v4, v4, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-interface {v4, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v4, v4, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-interface {v4, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1
.end method
