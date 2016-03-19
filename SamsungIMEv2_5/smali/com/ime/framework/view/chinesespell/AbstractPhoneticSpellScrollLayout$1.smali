.class Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;
.super Ljava/lang/Object;
.source "AbstractPhoneticSpellScrollLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput p2, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    # getter for: Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->access$000(Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->val$index:I

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->updatePhoneticSpell(I)V

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v0, v0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    iget v2, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->val$index:I

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    # getter for: Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->access$000(Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    # getter for: Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->access$000(Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    # getter for: Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->access$000(Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/ime/framework/common/InputManager;->setCloudCandidateUpdate(Z)V

    :cond_0
    return-void
.end method
