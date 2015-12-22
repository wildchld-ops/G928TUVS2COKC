.class public Lcom/android/settings/widget/MultiSelectionActionMode;
.super Ljava/lang/Object;
.source "MultiSelectionActionMode.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;,
        Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;
    }
.end annotation


# instance fields
.field private mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

.field private mAllCheckBox:Landroid/widget/CheckBox;

.field private mAllCheckContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mSelectedNumView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

    iput-object p1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

    iput-object p2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;-><init>(Lcom/android/settings/widget/MultiSelectionActionMode;Lcom/android/settings/widget/MultiSelectionActionMode$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

    invoke-interface {v0}, Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;->clickDoneBtn()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10060a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04004f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f1000d1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/widget/MultiSelectionActionMode$1;

    invoke-direct {v3, p0}, Lcom/android/settings/widget/MultiSelectionActionMode$1;-><init>(Lcom/android/settings/widget/MultiSelectionActionMode;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f1000d3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mSelectedNumView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f1000d2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v3, 0x7f120004

    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p2, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mOptionsMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f10060a

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/widget/MultiSelectionActionMode;->updateActionBarStatus()V

    return v1

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

    invoke-interface {v0}, Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;->destroyActionMode()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requestClick(I)V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    sub-int v3, p1, v2

    iget-object v4, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v4, 0x1020001

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_0
.end method

.method public updateActionBarStatus()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/widget/MultiSelectionActionMode;->updateText()V

    invoke-virtual {p0}, Lcom/android/settings/widget/MultiSelectionActionMode;->updateMenuBtn()V

    return-void
.end method

.method public updateMenuBtn()V
    .locals 2

    const v1, 0x7f10060a

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public updateText()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mSelectedNumView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mSelectedNumView:Landroid/widget/TextView;

    const v2, 0x7f0a150c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode;->mSelectedNumView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
