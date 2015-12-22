.class final Lcom/android/keyguard/sec/SecPopupManager$6;
.super Ljava/lang/Object;
.source "SecPopupManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    # getter for: Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->access$300()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->access$300()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "SecPopupManager"

    const-string v1, "help overlay dialog dismiss by onClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
