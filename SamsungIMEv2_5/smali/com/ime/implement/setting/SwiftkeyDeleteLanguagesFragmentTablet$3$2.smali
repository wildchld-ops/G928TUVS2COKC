.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3$2;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguagesFragmentTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3$2;->this$1:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3$2;->this$1:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3$2;->this$1:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;

    iget-object v1, v1, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$3;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-virtual {v1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
