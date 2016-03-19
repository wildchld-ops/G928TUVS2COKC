.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguagesFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->makeDeletePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mTotalDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mTotalDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mTotalDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-virtual {v1, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    :cond_0
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1300(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mTotalDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1200(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    # invokes: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    invoke-static {v4, v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1400(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;Lcom/touchtype_fluency/util/LanguagePack;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->notifyUpdateSelectedLanguageList()V
    invoke-static {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1500(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V

    const/4 v3, 0x0

    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletePopup:Z
    invoke-static {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1002(Z)Z

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mParentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$800(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "Delete is Done"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-virtual {v3}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$8;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method
