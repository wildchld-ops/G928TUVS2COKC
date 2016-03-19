.class Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$9;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->makeDeletePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages$9;->this$0:Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    # setter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletePopup:Z
    invoke-static {v1}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$1002(Z)Z

    # getter for: Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;->access$1100()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return v1
.end method
