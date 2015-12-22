.class final Lcom/android/keyguard/sec/SecPopupManager$5;
.super Ljava/lang/Object;
.source "SecPopupManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

.field final synthetic val$checkBoxId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$prefKey:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;Landroid/view/View;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    iput-object p2, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$checkBoxId:I

    iput-object p4, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$prefKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object v3, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    invoke-interface {v3}, Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;->onDismiss()V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$v:Landroid/view/View;

    iget v4, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$checkBoxId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    move-object v0, v2

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$prefKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const-string v3, "SecPopupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doNowShowAgain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    # setter for: Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/keyguard/sec/SecPopupManager;->access$302(Landroid/app/Dialog;)Landroid/app/Dialog;

    const-string v3, "SecPopupManager"

    const-string v4, "help overlay dialog set to null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
