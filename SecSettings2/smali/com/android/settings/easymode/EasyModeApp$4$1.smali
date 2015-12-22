.class Lcom/android/settings/easymode/EasyModeApp$4$1;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeApp$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/easymode/EasyModeApp$4;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeApp$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp$4$1;->this$1:Lcom/android/settings/easymode/EasyModeApp$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp$4$1;->this$1:Lcom/android/settings/easymode/EasyModeApp$4;

    iget-object v0, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->applyEasyMode()V
    invoke-static {v0}, Lcom/android/settings/easymode/EasyModeApp;->access$1300(Lcom/android/settings/easymode/EasyModeApp;)V

    return-void
.end method
