.class Lcom/android/phone/EmergencyDialer$ActionModeCallback;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mCheckedCount:I

.field private mItemSize:I

.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method private constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    iput v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/EmergencyDialer;Lcom/android/phone/EmergencyDialer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;-><init>(Lcom/android/phone/EmergencyDialer;)V

    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 5

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItem;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    iget v4, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mItemSize:I

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v2

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/EmergencyContactItemContainer;->removeContacts(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100114 -> :sswitch_0
        0x7f100203 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v2

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f120001

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_2

    const-string v2, "zero_emergency_dialer_layout"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040066

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :goto_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f10005b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/android/phone/EmergencyDialer;->access$802(Lcom/android/phone/EmergencyDialer;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f100059

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    # setter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v3, v2}, Lcom/android/phone/EmergencyDialer;->access$902(Lcom/android/phone/EmergencyDialer;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;-><init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;-><init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # setter for: Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2, p1}, Lcom/android/phone/EmergencyDialer;->access$1002(Lcom/android/phone/EmergencyDialer;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v5

    :cond_3
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040062

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1000(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # setter for: Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Lcom/android/phone/EmergencyDialer;->access$1002(Lcom/android/phone/EmergencyDialer;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1100(Lcom/android/phone/EmergencyDialer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # setter for: Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$1102(Lcom/android/phone/EmergencyDialer;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # setter for: Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$1202(Lcom/android/phone/EmergencyDialer;Z)Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const v1, 0x7f100203

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f100114

    const v0, 0x7f100202

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1200(Lcom/android/phone/EmergencyDialer;)Z

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "zero_emergency_dialer_layout"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->getCheckedCount()I
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$700(Lcom/android/phone/EmergencyDialer;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->getEmergencyContactExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1000(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1000(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return v4

    :cond_1
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const-string v0, "zero_emergency_dialer_layout"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "tablet_l_osup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->getCheckedCount()I
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$700(Lcom/android/phone/EmergencyDialer;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    :cond_5
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public updateSelectionMenu()V
    .locals 5

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->getCheckedCount()I
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$700(Lcom/android/phone/EmergencyDialer;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->updateDeleteScreenItems()V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a06d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    if-lez v1, :cond_1

    const-string v1, "zero_emergency_dialer_layout"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$800(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$800(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mCheckedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$800(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0740

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
