.class Lcom/sec/android/inputmethod/SpinnerPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SpinnerPreference;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SpinnerPreference$1;->this$0:Lcom/sec/android/inputmethod/SpinnerPreference;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SpinnerPreference$1;->this$0:Lcom/sec/android/inputmethod/SpinnerPreference;

    # getter for: Lcom/sec/android/inputmethod/SpinnerPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SpinnerPreference;->access$100(Lcom/sec/android/inputmethod/SpinnerPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/SpinnerPreference$1;->this$0:Lcom/sec/android/inputmethod/SpinnerPreference;

    # getter for: Lcom/sec/android/inputmethod/SpinnerPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/inputmethod/SpinnerPreference;->access$100(Lcom/sec/android/inputmethod/SpinnerPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d028b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    if-ltz p1, :cond_1

    # getter for: Lcom/sec/android/inputmethod/SpinnerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {}, Lcom/sec/android/inputmethod/SpinnerPreference;->access$000()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-object v2

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    if-ltz p1, :cond_0

    # getter for: Lcom/sec/android/inputmethod/SpinnerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {}, Lcom/sec/android/inputmethod/SpinnerPreference;->access$000()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
