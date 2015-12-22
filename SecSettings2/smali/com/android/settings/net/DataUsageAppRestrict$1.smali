.class Lcom/android/settings/net/DataUsageAppRestrict$1;
.super Ljava/lang/Object;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

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

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    const v5, 0x7f100064

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "DataUsageAppRestrict"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mListListener OnItemClickListener() isChecked+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Uid  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v5}, Lcom/android/settings/net/DataUsageAppRestrict;->access$000(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/NetworkPolicyManager;

    move-result-object v5

    iget v6, v0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    if-nez v2, :cond_1

    :goto_1
    # invokes: Lcom/android/settings/net/DataUsageAppRestrict;->setAppRestrictBackground(Landroid/net/NetworkPolicyManager;IZ)V
    invoke-static {v5, v6, v3}, Lcom/android/settings/net/DataUsageAppRestrict;->access$100(Landroid/net/NetworkPolicyManager;IZ)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    invoke-static {v3}, Lcom/android/settings/net/DataUsageAppRestrict;->access$200(Lcom/android/settings/net/DataUsageAppRestrict;)Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method
