.class Lcom/android/packageinstaller/PackageInstallerActivity$2;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$2;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$2;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    # getter for: Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$100(Lcom/android/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$2;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z
    invoke-static {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$202(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Z

    return-void
.end method
