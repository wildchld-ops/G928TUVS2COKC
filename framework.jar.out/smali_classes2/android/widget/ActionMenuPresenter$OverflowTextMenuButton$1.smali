.class Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;


# direct methods
.method constructor <init>(Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton$1;->this$1:Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return-void
.end method
