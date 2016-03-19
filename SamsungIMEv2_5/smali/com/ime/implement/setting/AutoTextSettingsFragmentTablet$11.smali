.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$11;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->showInputMethodIfRequired()V
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

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$11;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$11;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$500(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$11;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mShortCutTextView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$500(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AutoText"

    const-string v3, "Caught showInputMethod Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
