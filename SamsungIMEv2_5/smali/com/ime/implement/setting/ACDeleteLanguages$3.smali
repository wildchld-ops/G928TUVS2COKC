.class Lcom/ime/implement/setting/ACDeleteLanguages$3;
.super Ljava/lang/Object;
.source "ACDeleteLanguages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/ACDeleteLanguages;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/ACDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/ACDeleteLanguages;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$300(Lcom/ime/implement/setting/ACDeleteLanguages;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    # setter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z
    invoke-static {v7, v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$302(Lcom/ime/implement/setting/ACDeleteLanguages;Z)Z

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$400(Lcom/ime/implement/setting/ACDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$600(Lcom/ime/implement/setting/ACDeleteLanguages;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$600(Lcom/ime/implement/setting/ACDeleteLanguages;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f1000e6

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$300(Lcom/ime/implement/setting/ACDeleteLanguages;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$300(Lcom/ime/implement/setting/ACDeleteLanguages;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$000(Lcom/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$000(Lcom/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$300(Lcom/ime/implement/setting/ACDeleteLanguages;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$400(Lcom/ime/implement/setting/ACDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    :goto_3
    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    iget-object v7, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    :goto_4
    # invokes: Lcom/ime/implement/setting/ACDeleteLanguages;->setDoneMenuEnabled(Z)V
    invoke-static {v4, v5}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$200(Lcom/ime/implement/setting/ACDeleteLanguages;Z)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$3;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mSelectallAdpter:Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$400(Lcom/ime/implement/setting/ACDeleteLanguages;)Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_3

    :cond_4
    move v5, v6

    goto :goto_4
.end method
