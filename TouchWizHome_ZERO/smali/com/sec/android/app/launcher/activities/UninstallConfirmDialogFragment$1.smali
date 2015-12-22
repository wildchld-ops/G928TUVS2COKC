.class Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment$1;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UninstallConfirmDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;Landroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mReset:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->access$000(Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment$1;->val$pm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
