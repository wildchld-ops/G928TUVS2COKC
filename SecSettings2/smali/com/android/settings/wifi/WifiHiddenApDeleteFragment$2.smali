.class Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mCountTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    # getter for: Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
