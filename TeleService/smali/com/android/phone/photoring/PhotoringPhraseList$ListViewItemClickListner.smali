.class Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;
.super Ljava/lang/Object;
.source "PhotoringPhraseList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoringPhraseList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewItemClickListner"
.end annotation


# instance fields
.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/photoring/PhotoringPhrase;",
            ">;"
        }
    .end annotation
.end field

.field mLview:Landroid/widget/ListView;

.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringPhraseList;


# direct methods
.method public constructor <init>(Lcom/android/phone/photoring/PhotoringPhraseList;Ljava/util/ArrayList;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/photoring/PhotoringPhrase;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->mList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->mLview:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/photoring/PhotoringPhrase;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    # getter for: Lcom/android/phone/photoring/PhotoringPhraseList;->mScreenMode:I
    invoke-static {v2}, Lcom/android/phone/photoring/PhotoringPhraseList;->access$000(Lcom/android/phone/photoring/PhotoringPhraseList;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    iget-wide v4, v1, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    # invokes: Lcom/android/phone/photoring/PhotoringPhraseList;->viewPhrase(J)V
    invoke-static {v2, v4, v5}, Lcom/android/phone/photoring/PhotoringPhraseList;->access$100(Lcom/android/phone/photoring/PhotoringPhraseList;J)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f10016d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->mLview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v2, p3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    iget-object v5, v2, Lcom/android/phone/photoring/PhotoringPhraseList;->mcbSelectAll:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v2}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->isCheckedAll()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v2}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->isCheckedAll()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    iget-object v2, v2, Lcom/android/phone/photoring/PhotoringPhraseList;->mmiDel:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaRecent:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v5}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->isNonCheckedAll()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhraseList$ListViewItemClickListner;->this$0:Lcom/android/phone/photoring/PhotoringPhraseList;

    iget-object v5, v5, Lcom/android/phone/photoring/PhotoringPhraseList;->mpaPhrases:Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;

    invoke-virtual {v5}, Lcom/android/phone/photoring/PhotoringPhraseList$PhraseAdapter;->isNonCheckedAll()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2
.end method
