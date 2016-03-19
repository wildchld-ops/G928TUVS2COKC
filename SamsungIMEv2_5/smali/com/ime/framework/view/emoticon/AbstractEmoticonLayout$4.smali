.class Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$4;
.super Ljava/lang/Object;
.source "AbstractEmoticonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$4;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$4;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$4;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, -0x143

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$4;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, -0x142

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_0
.end method
