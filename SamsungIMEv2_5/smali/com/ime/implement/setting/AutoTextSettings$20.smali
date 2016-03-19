.class Lcom/ime/implement/setting/AutoTextSettings$20;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettings;->setTitleCheckBoxChecked(Z)V
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

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$20;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$20;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettings;->access$1900(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings$20;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v1}, Lcom/ime/implement/setting/AutoTextSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$20;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mTitleCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettings;->access$1900(Lcom/ime/implement/setting/AutoTextSettings;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
