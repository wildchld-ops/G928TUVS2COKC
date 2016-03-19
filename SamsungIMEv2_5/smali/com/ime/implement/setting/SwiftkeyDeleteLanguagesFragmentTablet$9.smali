.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$9;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguagesFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->makeDeletePopup()V
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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet$9;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeletePopup:Z
    invoke-static {v1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1002(Z)Z

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->mDeleteDlg:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;->access$1100()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return v1
.end method
