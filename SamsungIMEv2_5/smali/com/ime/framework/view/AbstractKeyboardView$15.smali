.class Lcom/ime/framework/view/AbstractKeyboardView$15;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/AbstractKeyboardView;->showSymbolPopupKeyboard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    return-void
.end method
