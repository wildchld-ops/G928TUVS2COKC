.class Lcom/android/packageinstaller/PackageInstallerActivity$1;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    # getter for: Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;
    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$000(Lcom/android/packageinstaller/PackageInstallerActivity;)Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setAllPermissionsDisplayed(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "new"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    # getter for: Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;
    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$000(Lcom/android/packageinstaller/PackageInstallerActivity;)Lcom/android/packageinstaller/InstallFlowAnalytics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setNewPermissionsDisplayed(Z)V

    goto :goto_0
.end method
