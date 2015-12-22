.class Lcom/android/server/enterprise/certificate/CertificatePolicy$3;
.super Ljava/lang/Thread;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field final synthetic val$adminNotification:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$adminNotification:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->val$adminNotification:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
