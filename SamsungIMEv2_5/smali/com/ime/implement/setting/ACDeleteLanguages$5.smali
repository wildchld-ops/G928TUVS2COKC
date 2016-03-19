.class Lcom/ime/implement/setting/ACDeleteLanguages$5;
.super Ljava/lang/Object;
.source "ACDeleteLanguages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/ACDeleteLanguages;->makeDeletePopup()V
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

    iput-object p1, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    # setter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mExtraBundle:Landroid/os/Bundle;
    invoke-static {v4, v5}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$902(Lcom/ime/implement/setting/ACDeleteLanguages;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    iget-object v4, v4, Lcom/ime/implement/setting/ACDeleteLanguages;->mDownloadedLanguageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mExtraBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$900(Lcom/ime/implement/setting/ACDeleteLanguages;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "languageIdList"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mIntent:Landroid/content/Intent;
    invoke-static {v4, v5}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$1002(Lcom/ime/implement/setting/ACDeleteLanguages;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$1000(Lcom/ime/implement/setting/ACDeleteLanguages;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mExtraBundle:Landroid/os/Bundle;
    invoke-static {v5}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$900(Lcom/ime/implement/setting/ACDeleteLanguages;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v4, 0x0

    # setter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDeletePopup:Z
    invoke-static {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$702(Z)Z

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$1000(Lcom/ime/implement/setting/ACDeleteLanguages;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/ime/implement/setting/ACDeleteLanguages;->setResult(ILandroid/content/Intent;)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    invoke-virtual {v4}, Lcom/ime/implement/setting/ACDeleteLanguages;->finish()V

    return-void
.end method
