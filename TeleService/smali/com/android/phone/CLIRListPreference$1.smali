.class Lcom/android/phone/CLIRListPreference$1;
.super Ljava/lang/Object;
.source "CLIRListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CLIRListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CLIRListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CLIRListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CLIRListPreference$1;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRListPreference$1;->this$0:Lcom/android/phone/CLIRListPreference;

    # getter for: Lcom/android/phone/CLIRListPreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/CLIRListPreference;->access$100(Lcom/android/phone/CLIRListPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
