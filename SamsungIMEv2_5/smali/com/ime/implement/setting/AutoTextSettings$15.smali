.class Lcom/ime/implement/setting/AutoTextSettings$15;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/AutoTextSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$15;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$15;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    # setter for: Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupOKButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/ime/implement/setting/AutoTextSettings;->access$1602(Lcom/ime/implement/setting/AutoTextSettings;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$15;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    iget-boolean v0, v0, Lcom/ime/implement/setting/AutoTextSettings;->isShortCutEmpty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$15;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    iget-boolean v0, v0, Lcom/ime/implement/setting/AutoTextSettings;->isPharseEmpty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$15;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAddPopupOKButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettings;->access$1600(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
