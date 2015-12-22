.class Lcom/android/settings/fingerprint/RegisterFingerprint$10;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->onClickContinue(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$10;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$10;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$10;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLastGuideScreen:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2000(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/view/ViewGroup;Z)V

    return-void
.end method
