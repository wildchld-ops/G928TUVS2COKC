.class Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;
.super Ljava/lang/Object;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContactDBInstance()Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->commitContactDialogData(I)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v3, v2}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v3, v2}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_1
    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SamsungIME_UnifiedIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractCandidateLayout, ContactDisplayListener: dialog interface, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
