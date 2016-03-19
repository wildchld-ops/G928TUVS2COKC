.class Lcom/ime/implement/setting/Xt9HwrRecogTypePreference$1;
.super Ljava/lang/Object;
.source "Xt9HwrRecogTypePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference$1;->this$0:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "Xt9HwrRecogTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder, which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference$1;->this$0:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    # setter for: Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->mClickedIndex:I
    invoke-static {v0, p2}, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->access$002(Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;I)I

    iget-object v0, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference$1;->this$0:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_XT9_HWR_RECOG_TYPE"

    iget-object v2, p0, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference$1;->this$0:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    # getter for: Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->mClickedIndex:I
    invoke-static {v2}, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->access$000(Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
