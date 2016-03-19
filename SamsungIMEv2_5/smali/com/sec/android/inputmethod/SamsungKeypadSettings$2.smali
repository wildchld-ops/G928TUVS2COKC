.class Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;
.super Ljava/lang/Object;
.source "SamsungKeypadSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettings;->rebuildActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCurrentMenu:I
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mAutoReplacementSettingsFragmentTablet:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mAutoReplacementSettingsFragmentTablet:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->exitAutoRelacementSettings()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mCurrentMenu:I
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSpellCheckerSettingsFragmentTablet:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mSpellCheckerSettingsFragmentTablet:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;->exitSpellCheckerSettings()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->mActionBarSubArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$2;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method
