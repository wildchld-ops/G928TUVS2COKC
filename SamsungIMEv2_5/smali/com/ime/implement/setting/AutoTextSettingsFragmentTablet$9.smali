.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$9;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->showAddPopupDialog(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$9;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$9;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    iput-boolean v4, v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isPharseEmpty:Z

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$9;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-virtual {v1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->setAddPopupOkButtonEnable()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\p{Space}"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$9;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isPharseEmpty:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$9;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    iput-boolean v4, v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->isPharseEmpty:Z

    goto :goto_0
.end method
