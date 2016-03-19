.class Lcom/ime/framework/view/AbstractViewController$6;
.super Ljava/lang/Object;
.source "AbstractViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/AbstractViewController;->initFullModeInputView(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/AbstractViewController;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/AbstractViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/AbstractViewController$6;->this$0:Lcom/ime/framework/view/AbstractViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController$6;->this$0:Lcom/ime/framework/view/AbstractViewController;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
