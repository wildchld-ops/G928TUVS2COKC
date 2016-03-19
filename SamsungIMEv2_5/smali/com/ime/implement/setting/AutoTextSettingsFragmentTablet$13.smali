.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$13;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$13;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$13;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    # setter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupOKButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$1202(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$13;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    iget-boolean v0, v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isShortCutEmpty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$13;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    iget-boolean v0, v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isPharseEmpty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$13;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAddPopupOKButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$1200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
