.class Lcom/android/settings/widget/MultiSelectionActionMode$1;
.super Ljava/lang/Object;
.source "MultiSelectionActionMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MultiSelectionActionMode;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MultiSelectionActionMode;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MultiSelectionActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$200(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/CheckBox;

    move-result-object v5

    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$200(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$200(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$1;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    invoke-virtual {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->updateActionBarStatus()V

    return-void
.end method
