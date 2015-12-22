.class Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$3;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$3;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$3;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->startDragMode(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->access$7100(Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V

    return-void
.end method
