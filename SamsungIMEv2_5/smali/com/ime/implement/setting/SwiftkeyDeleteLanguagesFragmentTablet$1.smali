.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguagesFragmentTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    iget-object v0, v0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mSelectActionBarView:Landroid/view/View;

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1$1;-><init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
