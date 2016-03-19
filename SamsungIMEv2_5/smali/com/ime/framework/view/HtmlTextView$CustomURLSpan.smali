.class Lcom/ime/framework/view/HtmlTextView$CustomURLSpan;
.super Landroid/text/style/URLSpan;
.source "HtmlTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/HtmlTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomURLSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/HtmlTextView;


# direct methods
.method public constructor <init>(Lcom/ime/framework/view/HtmlTextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/HtmlTextView$CustomURLSpan;->this$0:Lcom/ime/framework/view/HtmlTextView;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v5, p0, Lcom/ime/framework/view/HtmlTextView$CustomURLSpan;->this$0:Lcom/ime/framework/view/HtmlTextView;

    # getter for: Lcom/ime/framework/view/HtmlTextView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/ime/framework/view/HtmlTextView;->access$000(Lcom/ime/framework/view/HtmlTextView;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/HtmlTextView$CustomURLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
