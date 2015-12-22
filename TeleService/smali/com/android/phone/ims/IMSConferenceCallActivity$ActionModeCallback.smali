.class Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;Lcom/android/phone/ims/IMSConferenceCallActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/ims/IMSConferenceCallActivity;
    .param p2    # Lcom/android/phone/ims/IMSConferenceCallActivity$1;

    invoke-direct {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2100()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # invokes: Lcom/android/phone/ims/IMSConferenceCallActivity;->deleteConfCallerList()V
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2600(Lcom/android/phone/ims/IMSConferenceCallActivity;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f100114 -> :sswitch_0
        0x7f100203 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2100()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2702(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f120004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "zero_support_selection_all_text"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04004f

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f1000f1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2802(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f100059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2902(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f1000f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllContainer:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3002(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectAllContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3000(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback$1;-><init>(Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3202(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040050

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1    # Landroid/view/ActionMode;

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2700(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2700(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2702(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3200(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3202(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$600(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSelectedNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$602(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2200(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mPreviousCheckedNumber:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2200(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mLongClickActionMode:Z
    invoke-static {v0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$702(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # invokes: Lcom/android/phone/ims/IMSConferenceCallActivity;->setScreenState(I)V
    invoke-static {v0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$800(Lcom/android/phone/ims/IMSConferenceCallActivity;I)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 3
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I
    .param p3    # J
    .param p5    # Z

    const/4 v2, 0x0

    if-eqz p5, :cond_2

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2700(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mLongClickActionMode:Z
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$700(Lcom/android/phone/ims/IMSConferenceCallActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2100()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mSkipClickSound:Z
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3100(Lcom/android/phone/ims/IMSConferenceCallActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mDeleteList:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2100()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->playSoundEffect(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsSelectAllmode:Z
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3300(Lcom/android/phone/ims/IMSConferenceCallActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mParticipantsAdapter:Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$500(Lcom/android/phone/ims/IMSConferenceCallActivity;)Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity$ParticipantsAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2700(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mLongClickActionMode:Z
    invoke-static {v0, v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$702(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z

    goto :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const v3, 0x7f100114

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f100203

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$ActionModeCallback;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$2700(Lcom/android/phone/ims/IMSConferenceCallActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return v2

    :cond_0
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
