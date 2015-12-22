.class Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;
.super Ljava/lang/Object;
.source "MultiSelectionActionMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/MultiSelectionActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MultiSelectionActionMode;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/MultiSelectionActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/MultiSelectionActionMode;Lcom/android/settings/widget/MultiSelectionActionMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;-><init>(Lcom/android/settings/widget/MultiSelectionActionMode;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    invoke-virtual {v1, p3}, Lcom/android/settings/widget/MultiSelectionActionMode;->requestClick(I)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$200(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    invoke-virtual {v1}, Lcom/android/settings/widget/MultiSelectionActionMode;->updateActionBarStatus()V

    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$100(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/MultiSelectionActionMode$ListViewItemClickListener;->this$0:Lcom/android/settings/widget/MultiSelectionActionMode;

    # getter for: Lcom/android/settings/widget/MultiSelectionActionMode;->mAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/widget/MultiSelectionActionMode;->access$200(Lcom/android/settings/widget/MultiSelectionActionMode;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
